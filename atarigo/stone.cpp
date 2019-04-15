#include "stone.hpp"
Stone::Stone(Stone::Color color)
      : color{color} {}
 char Stone::getRepr() const {
        if(color == Color::White) {
            return 'O';
        }
        return 'X';
    }
