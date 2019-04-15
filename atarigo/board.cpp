#include "board.hpp"
#include <iostream>
#include <array>
#include <optional>
#include <algorithm>
#include <iterator>
#include <sstream>

Board::Board()
    : fields{} {}

void Board::show() const {
    showColName();
    auto rowNumber = BoardWidth + 1;
    while(--rowNumber > 1) {
        showRow(rowNumber);
        showSeparator();
    }
    showRow(1);
    showColName();
}

void Board::dropStone(Stone&& stone, std::size_t col, std::size_t row) {
    fields[row][col] = std::move(stone);
}

void Board::showColName() const {
    std::cout << "  ";
    char c = 'a';
    std::generate_n(std::ostream_iterator<char>(std::cout, " "), BoardWidth,
    [&]() {
        return c++;
    });
    std::cout << '\n';
}

void Board::showSeparator() const {
    std::cout << "  ";
    std::fill_n(std::ostream_iterator<char>(std::cout, " "), BoardWidth, '|');
    std::cout << '\n';
}
void Board::showRow(std::size_t rowNumber) const {
    auto fieldLambda = [](const auto& field) {
        return field ? field->getRepr(): '+';
    };
    std::cout << rowNumber << ' ';
    std::transform(fields[rowNumber - 1].cbegin(), std::prev(fields[rowNumber - 1].cend()),
                   std::ostream_iterator<char>(std::cout, "-"), fieldLambda);
    std::cout << fieldLambda(*fields[rowNumber - 1].crbegin());
    std::cout << ' ' << rowNumber << '\n';
}
