#pragma once

class Stone {
public:
    enum class Color {
        Black,
        White
    };
    Stone(Stone::Color color);
    // noncopyable
    Stone(const Stone&) = delete;
    Stone& operator = (const Stone&) = delete;
    // movable
    Stone(Stone&&) = default;
    Stone& operator = (Stone&&) = default;
    char getRepr() const ;
private:
    Color color;
};
