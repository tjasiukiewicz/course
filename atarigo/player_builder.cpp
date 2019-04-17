#include "player_builder.hpp"
#include "player.hpp"
#include "stone.hpp"

std::pair<std::unique_ptr<Player>, std::unique_ptr<Player>> PlayerBuilder::makePlayers(PlayerBuilder::GameKind kind) {
    (void) kind;
    return { std::make_unique<Player>("Adam", Stone::Color::Black), std::make_unique<Player>("Gosia", Stone::Color::White) };
}
