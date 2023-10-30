CXX       := g++
CXX_FLAGS := -std=c++20

BIN     := bin
SRC     := src
INCLUDE := include
EXECUTABLE  := main


all: $(BIN)/$(EXECUTABLE)

recompile: clean all
	clear

exec:
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) $^ -o $@ -I$(INCLUDE)

.PHONY: clean 
clean:
	$(RM) $(BIN)/*
