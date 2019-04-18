#include <iostream>
#include <functional>
#include <tuple>
#include <map>
#include <chrono>
#include <thread>

double foo1(int val) {
    std::this_thread::sleep_for(std::chrono::seconds(1));
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
    std::map<std::tuple<Args...>, ReturnValue> cache;
    return [=](Args... args) mutable {
        auto key = std::make_tuple(args...);
        auto it = cache.find(key);
        if(it == cache.end()) {
            auto result = func(std::forward<Args>(args)...);
            cache[key] = result;
            std::cout << "Cache MISS!!\n";
            return cache[key];
        }
        std::cout << "Cache HINT!!\n";
        return it->second;
    };
}

int main() {
    auto cachedMemoize2 = memoize2(foo1);
    std::cout << cachedMemoize2(12) << '\n';
    std::cout << cachedMemoize2(15) << '\n';
    std::cout << cachedMemoize2(12) << '\n';
}
