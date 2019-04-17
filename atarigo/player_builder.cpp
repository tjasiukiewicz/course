#include "player_builder.hpp"
#include "player.hpp"
#include "stone.hpp"
#include "player_facade.hpp"
#include "streams.hpp"
#include <iostream>

std::pair<std::unique_ptr<Player>, std::unique_ptr<Player>> PlayerBuilder::makePlayers(const Streams& streams, PlayerBuilder::GameKind kind) {
    (void) kind;
    PlayerFacade facade{streams};
    return {std::make_unique<Player>(facade, "Adam", Stone::Color::Black),
            std::make_unique<Player>(facade, "Gosia", Stone::Color::White)};
}
