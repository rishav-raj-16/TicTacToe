Player:
-> name
-> symbol (X/O)

Board:
-> Initialize Board
-> display Board
-> update Board
-> check if someone win

Game:
-> Game loop
-> handle Player turns
-> game state(won, drow,ongoing)


To run program :-

1. g++ -c game.cpp player.cpp board.cpp main.cpp
2. g++ game.o player.o board.o main.o -o tic_tac_toe
3.  .\tic_tac_toe.exe
