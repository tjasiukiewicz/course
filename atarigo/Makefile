CXXFLAGS:= -std=c++17 -Wall -Wextra -pedantic
LDFLAGS:=
CXX:= g++
OBJECTS:= main.o board.o stone.o board_visitor.o

main: $(OBJECTS)
	$(CXX) $(LDFLAGS) -o main $(OBJECTS)

clean:
	@rm -rf main $(OBJECTS) > /dev/null 2>&1
