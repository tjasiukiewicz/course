#include "board.hpp"
#include "stone.hpp"

int main() {
    Board board;
    board.dropStone(Stone{Stone::Color::Black}, 2, 3);
    board.show();
}
