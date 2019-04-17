#include "game.hpp"
#include "player.hpp"
#include "board_visitor.hpp"
#include "player_builder.hpp"
#include "drop_effect.hpp"
#include "game_facade.hpp"

Game::Game(const Streams& streams)
    : boardVisitor{std::make_unique<BoardVisitor>(streams)},
      currentPlayer{}, nextPlayer{},
      board{std::make_unique<Board>()},
      facade{std::make_unique<GameFacade>(streams)} {
    auto [pl1, pl2] = PlayerBuilder::makePlayers(streams, PlayerBuilder::GameKind::HumanVsHuman);
    currentPlayer = std::move(pl1);
    nextPlayer = std::move(pl2);
}

Game::~Game() = default;

void Game::run() {
    board->accept(*boardVisitor);
    for(;;) {
        currentPlayer->show();
        auto [col, row] = currentPlayer->getMove();
        auto moveStatus = board->dropStone(Stone{currentPlayer->getColor()}, col, row);
        if(moveStatus != DropEffect::Success) {
            facade->moveError(moveStatus);
            continue;
        }
        board->accept(*boardVisitor);
        currentPlayer.swap(nextPlayer);
    }
}
