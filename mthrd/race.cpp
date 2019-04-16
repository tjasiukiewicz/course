#include <iostream>
#include <chrono>
#include <thread>
#include <cassert>
#include <mutex>

int counter = 65535;
std::mutex mtx;

void change(int delta) {
    for(auto i = 0; i < 100; ++i) {
        {
            std::lock_guard<std::mutex> lk(mtx);
            //mtx.lock();
            counter += delta;
            //mtc.unlock();
            //
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(5));
    }
}

int main() {
    std::thread th1{change, 1};
    std::thread th2{change, -1};
    th1.join();
    th2.join();
    assert(counter == 65535);
}
