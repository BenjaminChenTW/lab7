all: genmino.o tetris.o
	g++ -o tetris tetris.o genmino.o 

tetris.o: tetris.cpp genmino.o
	g++ -c tetris.cpp -o tetris.o
	
Mino.o: Mino.cpp Mino.h
	g++ -c Mino.cpp -o Mino.o

genmino.o: genmino.cpp genmino.h MinoI.o MinoL.o MinoS.o MinoJ.o MinoZ.o
	g++ -c genmino.cpp -o genmino.o
	
MinoI.o: MinoI.cpp MinoI.h Mino.o
	g++ -c MinoI.cpp -o MinoI.o
	
MinoJ.o: MinoJ.cpp MinoJ.h Mino.o
	g++ -c MinoJ.cpp -o MinoJ.o
	
MinoL.o: MinoL.cpp MinoL.h Mino.o
	g++ -c MinoL.cpp -o MinoL.o
	
MinoS.o: MinoS.cpp MinoS.h Mino.o
	g++ -c MinoS.cpp -o MinoS.o
	
MinoZ.o: MinoZ.cpp MinoZ.h Mino.o
	g++ -c MinoZ.cpp -o MinoZ.o
	
clean:
	rm tetris *.o