#pragma once

#include <memory>
#include "player.hpp"

class BoardVisitor;
class Player;
class Board;

class Game {
public:
    Game(BoardVisitor&& boardVisitor);
    void run();
    ~Game() = default;
private:
      std::unique_ptr<BoardVisitor> boardVisitor;
      std::unique_ptr<Player> currentPlayer;
      std::unique_ptr<Player> nextPlayer;
      std::unique_ptr<Board> board;
};


