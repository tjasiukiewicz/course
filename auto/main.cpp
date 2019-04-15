#include <iostream>

template<typename T1, typename T2>
auto myMax(T1 v1, T2 v2) -> decltype(v1 + v2) {
    return v1 > v2 ? v1: v2;
}

int main() {
    auto i = 12U;
    decltype(i) z;

    auto myMaxLambda = [](auto val1, auto val2) -> decltype(val1 + val2) {
        return val1 > val2 ? val1: val2;
    };

}
