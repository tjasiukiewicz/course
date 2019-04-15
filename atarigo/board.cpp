#include <iostream>
#include <array>
#include <optional>

constexpr static std::size_t BoardWidth = 9;

class Stone {
public:
    enum class Color {
        Black,
        White
    };
    Stone(Stone::Color color)
      : color{color} {}
    // noncopyable
    Stone(const Stone&) = delete;
    Stone& operator = (const Stone&) = delete;
    // movable
    Stone(Stone&&) = default;
    Stone& operator = (Stone&&) = default;
    char getRepr() const {
        if(color == Color::White) {
            return 'O';
        }
        return 'X';
    }
private:
    Color color;
};

class Board {
public:
    Board()
        : fields{} {}
    void show() const {
        showColName();
        auto rowNumber = BoardWidth + 1;
        while(--rowNumber > 1) {
            showRow(rowNumber);
            showSeparator();
        }
        showRow(1);
        showColName();
    }

    void dropStone(Stone&& stone, std::size_t col, std::size_t row) {
        fields[row][col] = std::move(stone);
    }

private:
    void showColName() const {
        std::cout << "  a b c d e f g h i\n";
    }
    void showSeparator() const {
        std::cout << "  | | | | | | | | |\n";
    }
    void showRow(std::size_t rowNumber) const {
            std::cout << rowNumber << ' ';
            for(auto col = 0; col < BoardWidth - 1; ++col) {
                const auto & field = fields[rowNumber - 1][col];
                if(!field) {
                    std::cout << '+';
                } else {
                    std::cout << field->getRepr();
                }
                std::cout << '-';
            }
            const auto & field = fields[rowNumber - 1][BoardWidth - 1];
            if(!field) {
                std::cout << '+';
            } else {
                std::cout << field->getRepr();
            }
            std::cout << ' ' << rowNumber << '\n';
    }
    std::array<std::array<std::optional<Stone>, BoardWidth>, BoardWidth> fields;
};

int main() {
    Board board;
    board.dropStone(Stone{Stone::Color::Black}, 2, 3);
    board.show();
}
