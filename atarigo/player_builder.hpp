#pragma once

#include <utility>
#include <memory>

class Player;

class PlayerBuilder {
public:
    enum class GameKind {
        HumanVsHuman,
        HumanVsAI,
        AIVsAI
    };
    static std::pair<std::unique_ptr<Player>, std::unique_ptr<Player>> makePlayers(GameKind kind);
};

