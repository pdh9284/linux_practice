all : test

test: like.o libmy.a
	gcc -o test like.o -L. -lmy

libmy.a: file1.o file2.o
	ar rscv libmy.a file1.o file2.o

file1.o: file1.c
	gcc -W -Wall -c -o file1.o file1.c

file2.o: file2.c
	gcc -W -Wall -c -o file2.o file2.c


#test: like.o  file1.o file2.o
#	gcc -W -Wall -o test like.o file1.o file2.o

#like.o : like.c
#	gcc -W -Wall -c -o like.o like.c

#file1.o : file1.c
#	gcc -W -Wall -c -o file1.o file1.c

#file2.o : file2.c
#	gcc -W -Wall -c -o file2.o file2.c
