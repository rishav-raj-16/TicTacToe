# Define the compiler
CXX = g++

# Define the source files
SRCS = game.cpp player.cpp board.cpp main.cpp

# Define the object files
OBJS = $(SRCS:.cpp=.o)

# Define the output executable
TARGET = tic_tac_toe

# Default target to build the program
all: $(TARGET) run

# Rule to build the executable
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

# Rule to compile the source files into object files
%.o: %.cpp
	$(CXX) -c $< -o $@

# Rule to run the executable
run: $(TARGET)
	.\$(TARGET).exe

# Clean target to remove generated files
clean:
	rm -f $(OBJS) $(TARGET).exe

# Phony targets
.PHONY: all clean run