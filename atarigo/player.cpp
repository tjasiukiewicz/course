#include "player.hpp"
#include <cstdlib>
#include <iostream>
#include <cstddef>
#include <string>

namespace {

std::size_t getCoords(const std::string& prompt) {
    std::size_t coords;
    for(;;) {
        std::cout << prompt;
        std::cin >> coords;
        if(std::cin) {
            break;
        }
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        std::cout << "Zły ruch!";
    }
    return coords;
}

} // anonymous namespace

Player::Player(const std::string& name, Stone::Color color) 
    : name{name}, color{color} {}

const std::string& Player::getName() const {
    return name;
}

Stone::Color Player::getColor() const {
    return color;
}

std::pair<std::size_t, std::size_t> Player::getMove() const {
    // FIXME: Range!!!
    auto col = getCoords("Podaj kolumnę [0, 8]: ");
    auto row = getCoords("Podaj wiersz [0, 8]: ");
    return {col, row};
}
