#include "game.hpp"
#include "board_visitor.hpp"
#include "player.hpp"
#include "board.hpp"
#include "player_builder.hpp"
#include <iostream>
#include <ctime>

Game::Game(BoardVisitor&& boardVisitor)
      : boardVisitor{&boardVisitor},
        currentPlayer{}, nextPlayer{},
        board{std::make_unique<Board>()} {
            auto [pl1, pl2] = PlayerBuilder::makePlayers(PlayerBuilder::GameKind::HumanVsHuman);
            currentPlayer = std::move(pl1);
            nextPlayer = std::move(pl2);
    }

void Game::run() {
        board->accept(*boardVisitor);
        boardVisitor->show();
        for(;;) {
            std::cout << "Gracz: " << currentPlayer->getName() << ' ';
            auto [col, row] = currentPlayer->getMove();
            if( ! board->dropStone(Stone{currentPlayer->getColor()}, col, row)) {
                std::cout << "Na podanej pozycji znajduje się już kamień!\n";
                continue;
            }
            boardVisitor->show();
            currentPlayer.swap(nextPlayer);
        }
}
