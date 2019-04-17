#include <iostream>
#include "game.hpp"
#include "streams.hpp"

int main() {
    Game game{Streams{std::cin, std::cout, std::cerr}};
    game.run();
}
