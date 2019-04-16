#include <iostream>
#include <future>
#include <chrono>
#include <thread>


struct Executor {
    template<typename Duration, typename Function, typename... Args>
    static void periodic(Duration duration, Function&& fun, Args... args) {
        for(;;) {
            std::chrono::system_clock::time_point now = std::chrono::system_clock::now();
            auto next_point = now + duration;
            fun(std::forward<Args>(args)...);
            std::this_thread::sleep_until(next_point);
        }
    }
private:
};

int main() {
    auto ftr = std::async(std::launch::async, []{
        Executor::periodic(std::chrono::seconds(1), []{ std::cout << "Ping!\n"; });
    });
    for(auto i = 0; i < 10; ++i) {
        std::cout << "Work in main()\n";
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
    }
    ftr.get();
}
