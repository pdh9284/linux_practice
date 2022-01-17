CC =gcc
CFLAGS = -W -Wall
AR = ar

TARGET = test
LIB_SRC1 = file1
LIB_SRC2 = file2

LIB_OUT = libmy.a

all : $(TARGET)
$(TARGET): like.c $(LIB_OUT)
	$(CC) $(CFLAGS) -o $(TARGET) like.c $(LIB_OUT)

$(LIB_OUT): $(LIB_SRC1).o $(LIB_SRC2).o
	$(AR) rscv $(LIB_OUT) $(LIB_SRC1).o $(LIB_SRC2).o

$(LIB_SRC1).o: $(LIB_SRC1).c
	$(CC) $(CFLAGS) -c -o $(LIB_SRC1).o $(LIB_SRC1).c

$(LIB_SRC2).o: $(LIB_SRC2).c
	$(CC) $(CFLAGS) -c -o $(LIB_SRC2).o $(LIB_SRC2).c

clean :
	rm -rf *.o $(TARGET)


#test: like.o  file1.o file2.o
#	gcc -W -Wall -o test like.o file1.o file2.o

#like.o : like.c
#	gcc -W -Wall -c -o like.o like.c

#file1.o : file1.c
#	gcc -W -Wall -c -o file1.o file1.c

#file2.o : file2.c
#	gcc -W -Wall -c -o file2.o file2.c
