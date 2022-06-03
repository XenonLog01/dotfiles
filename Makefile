CC = gcc

SRC  =  $(shell find src -name *.c)
OBJ  =  $(SRC:.c=.o)

OUT = bin
CCFLAGS = 
LDFLAGS =

all: clear dirs build

dirs:
	mkdir $(OUT)

build: $(OBJ)
	$(CC) -o $(OUT)/app $^ $(LDFLAGS)

%.o: %.c
	$(CC) -o $@ -c $< $(CCFLAGS)

run: all
	$(OUT)/app

clear:
	rm -rf $(OUT)
	rm $(OBJ)
