#include <iostream>
#include "board.hpp"
#include "stone.hpp"
#include "board_visitor.hpp"

int main() {
    Board board;
    BoardVisitor bVisitor{std::cout};
    board.dropStone(Stone{Stone::Color::Black}, 2, 3);
    board.accept(bVisitor);
    bVisitor.show();
}
