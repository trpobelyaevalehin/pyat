default: bin/pyat

test: bin/p_test
	bin/p_test

bin/pyat: build/main.o build/collage.o build/game.o build/printBoard.o build/winChecking.o
	gcc -Wall -Werror build/main.o build/collage.o build/game.o build/printBoard.o build/winChecking.o -o bin/pyat

bin/p_test: build/main_test.o build/winChecking.o
	gcc -Wall -Werror build/main_test.o build/winChecking.o -o bin/p_test

build/main.o: src/main.c
	gcc -std=c99 -Wall -Werror -c src/main.c -o build/main.o

build/collage.o: src/collage.c
	gcc -std=c99 -Wall -Werror -c src/collage.c -o build/collage.o

build/game.o: src/game.c
	gcc -std=c99 -Wall -Werror -c src/game.c -o build/game.o

build/printBoard.o: src/printBoard.c
	gcc -std=c99 -Wall -Werror -c src/printBoard.c -o build/printBoard.o

build/winChecking.o: src/winChecking.c
	gcc -std=c99 -Wall -Werror -c src/winChecking.c -o build/winChecking.o

build/main_test.o: test/main.c
	gcc -std=c99 -I src -I thirdparty -c test/main.c -o build/main_test.o

.PHONY : clean
clean:
	rm -rf build/*.o
