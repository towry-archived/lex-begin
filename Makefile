all: main.o lex.yy.o
	gcc main.o lex.yy.o -o lexer.exe -LD:\devkits\GnuWin32\lib -lfl

main.o: main.c
	gcc -c main.c

lex.yy.o: lex.yy.c
	gcc -c lex.yy.c

lex.yy.c:
	flex lexer.l

clean:
	rm -rf *.exe lex.yy.c *.o
