CXXFLAGS:= -std=c++17 -Wall -Wextra -pedantic
LDFLAGS:=
CXX:= g++
OBJECTS:= main.o board.o stone.o board_visitor.o player.o \
	game.o player_builder.o player_facade.o game_facade.o game_rule.o

main: $(OBJECTS)
	$(CXX) $(LDFLAGS) -o main $(OBJECTS)

clean:
	@rm -rf main $(OBJECTS) > /dev/null 2>&1

