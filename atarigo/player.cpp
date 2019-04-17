#include "player.hpp"

Player::Player(PlayerFacade& facade, const std::string& name, Stone::Color color)
    : name{name}, color{color}, facade{facade} {}

void Player::show() const {
    facade.showPlayerInfo(name, color);
}

Stone::Color Player::getColor() const {
    return color;
}

std::pair<std::size_t, std::size_t> Player::getMove() const {
    return facade.getMove();
}
