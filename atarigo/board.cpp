#include "board.hpp"
#include "board_visitor.hpp"

Board::Board()
    : fields{} {}

void Board::accept(BoardVisitor& visitor) const {
    visitor.visit(fields);
}

bool Board::dropStone(Stone&& stone, std::size_t col, std::size_t row) {
    if(!fields[row][col]) {
        fields[row][col] = std::move(stone);
        return true;
    }
    return false;
}
