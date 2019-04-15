#include <iostream>
#include <type_traits>

template<typename T>
int calc(T value) {
    if constexpr (std::is_same<T, int>::value) {
        return 20;
    } else if(std::is_same<T, double>::value) {
        return 30;
    }
    return 0;
}


int main() {
    std::cout << calc(122.0) << '\n';

    /* C++17
    if(const auto& val = myMap.find(120); val != myMap.cend()) {
    }

    if(std::unique_lock<std::mutex> lk(mtx); test) {
    }

    std::vector val{1,2,3,4};
    auto& [fValue, sValue] = myPair;

    int fValue, sValue;
    std::tie(fvalue, sValue) = myPair;
    */
}
