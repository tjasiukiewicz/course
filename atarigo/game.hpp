#pragma once

#include <memory>

class Player;
class BoardVisitor;
class Board;
class GameFacade;
struct Streams;

class Game {
public:
    Game(const Streams& streams);
    void run();
    ~Game();
private:
    const std::unique_ptr<BoardVisitor> boardVisitor;
    std::unique_ptr<Player> currentPlayer;
    std::unique_ptr<Player> nextPlayer;
    const std::unique_ptr<Board> board;
    const std::unique_ptr<GameFacade> facade;
};


