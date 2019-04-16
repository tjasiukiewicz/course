#include <iostream>
#include <future>
#include <chrono>
#include <thread>


struct Executor {
    template<typename Rep, typename Den, typename Function, typename... Args>
    static void periodic(std::chrono::duration<Rep, Den> duration, Function&& fun, Args&&... args) {
        Executor::thr = std::thread([&,duration]{ Executor::periodicLoop(duration, fun, std::forward<Args>(args)...); });
        //Executor::thr = std::thread(&Executor::periodicLoop, duration, fun, std::forward<Args>(args)...);
    }
    static void doStop() {
        Executor::stop = true;
        Executor::thr.join();
    }
private:
    template<typename Rep, typename Den, typename Function, typename... Args>
    static void periodicLoop(std::chrono::duration<Rep, Den> duration, Function&& fun, Args&&... args) {
        auto next_point = std::chrono::system_clock::now() + duration;
        while(!Executor::stop) {
            std::this_thread::sleep_until(next_point);
            fun(std::forward<Args>(args)...);
            next_point += duration;
        }
    }
    static bool stop;
    static std::thread thr;
};

bool Executor::stop = false;
std::thread Executor::thr;

int main() {
    Executor::periodic(std::chrono::seconds(1), []{ std::cout << "Ping!" << std::endl; });
    for(auto i = 0; i < 10; ++i) {
        std::cout << "Work in main()" << std::endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
    }
    Executor::doStop();
}
