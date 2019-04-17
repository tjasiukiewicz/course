#include "board.hpp"
#include "board_visitor.hpp"

Board::Board()
    : fields{} {}

void Board::accept(BoardVisitor& visitor) const {
    visitor.visit(fields);
}

void Board::dropStone(Stone&& stone, std::size_t col, std::size_t row) {
    fields[row][col] = std::move(stone);
}
