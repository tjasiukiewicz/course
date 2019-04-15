#include <iostream>

int main() {
    std::vector<int> vec{1,2,3,4,5,6,8,12};

    auto gt5 = std::accumulate(vec.begin(), vec.end(), 0, [](int counter, int val) {
        if(val > 5) {
            ++counter;
        }
        return counter;
    });
    std::cout << gt5 << '\n';
}
