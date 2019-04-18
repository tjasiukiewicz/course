#include <iostream>
#include <functional>
#include <tuple>
#include <map>

double foo1(int val) {
    return val * 3.14;
}

int foo2(int val1, int val2) {
    return val1 * val2;
}


template<typename Func, typename... Args>
auto wrapper(Func func, Args&&... args) -> typename std::result_of<Func(Args...)>::type {
    std::cout << "In wrapper....\n";
    return func(std::forward<Args>(args)...);
}

template<typename Func, typename... Args>
std::function<typename std::result_of<Func(Args...)>::type(Args...)> memoize1(Func func, Args&&... args) { // -> typename std::result_of<Func(Args...)>::type {
    std::cout << "In wrapper....\n";
    return [=](Args&&... args) {
        return func(std::forward<Args>(args)...);
    }; //(std::forward<Args>(args)...);
}

template<typename ReturnValue, typename... Args>
std::function<ReturnValue(Args...)> memoize2(ReturnValue (*func)(Args...)) {
    std::cout << "In wrapper....\n";
    std::map<std::tuple<Args...>, ReturnValue> cache;
    return [=](Args... args) {
        return func(std::forward<Args>(args)...);
    };
}

int main() {
    std::cout << memoize2(foo1)(12) << '\n';
    std::cout << memoize2(foo2)(2, 3) << '\n';
}
