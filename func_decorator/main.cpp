#include <iostream>

double addTax(double val) {
    return val * 1.23;
}

double addFee(double val) {
    return val * 1.1;
}

double addShipping(double val) {
    return val + 0.01;
}

namespace detail {

template<typename ArgType, typename Function>
auto applyFuncs_impl(ArgType arg, Function func) {
    return func(arg);
}
template<typename ArgType, typename Func, typename... Functions>
auto applyFuncs_impl(ArgType arg, Func func, Functions... funcs) {
    return detail::applyFuncs_impl(detail::applyFuncs_impl(arg, func), funcs...);
}


} // namespace detail

template<typename ArgType, typename ... Funcs>
auto applyFuncs(ArgType value, Funcs... funcs) {
    return detail::applyFuncs_impl(value, funcs...);
}

int main() {
    std::cout << addShipping(addFee(addTax(100.0))) << '\n';
    //std::cout << decorate<double>(100.0).decor(addTax).decor(addFee).decor(addShipping) << '\n';
    std::cout << applyFuncs(100.0, addTax, addFee, addTax, [](double val) { return val * 2.0; }) << '\n';
}
