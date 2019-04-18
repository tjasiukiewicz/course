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


int main() {
    std::cout << addShipping(addFee(addTax(100.0))) << '\n';
    //std::cout << decorate<double>(100.0).decor(addTax).decor(addFee).decor(addShipping) << '\n';
    std::cout << applyFuncs(100.0, addTax, addFee, addTax, [](double val) { return 10000.0; }) << '\n';
}
