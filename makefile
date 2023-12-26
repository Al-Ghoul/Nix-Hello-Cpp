hello	: main.o
	clang++ -o hello main.o 

main.o	: ./src/main.cc
					clang++ -c ./src/main.cc

clean	:
	rm hello main.o
