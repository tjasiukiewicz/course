#include <iostream>
#include <mutex>
#include <queue>
#include <string>
#include <condition_variable>
#include <thread>

std::mutex mtx;
std::queue<int> data_queue;
std::condition_variable cond;
bool doStop = false;

void sender(int data) {
    std::lock_guard<std::mutex> lk(mtx);
    data_queue.push(data);
    cond.notify_one();
}

void worker(const std::string& name) {
    for(;;) {
        std::unique_lock<std::mutex> lk(mtx);
        cond.wait(lk, []{ return !data_queue.empty() || doStop; });
        if(doStop && data_queue.empty()) {
            break;
        }
        auto data = data_queue.front();
        data_queue.pop();
        lk.unlock();
        std::cout << "Worker " << name << " data = " << data << std::endl;
    }
}

void shutdown() {
    doStop = true;
    cond.notify_all();
}

int main() {
    std::thread t1(worker, "First worker");
    std::thread t2(worker, "Second worker");
    for(auto i = 0; i < 10; ++i) {
        sender(i + 100);
        //std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
    std::cout << "SHUTDOWN!!!!!" << std::endl;
    shutdown();

    t1.join(); t2.join();

    std::cout << "Queue empty? " << std::boolalpha << data_queue.empty() << '\n';
}
