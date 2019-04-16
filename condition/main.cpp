#include <condition_variable>
#include <mutex>

std::mutex mtx;
std::condition_variable cond;

int main() {
    // Wrong!

    {
        std::unique_lock<std::mutex> lk(mtx);
        cond.wait(lk, []{ return !stop; }); 
        // Diałanie po wybudzeniu... 
    }

    cond.notify_one();

}



