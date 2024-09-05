# makefile for bsa7b
#
bsa7b: bsa7b.o
	ld bsa7b.o -o ./Build/DEBUG/bsa7b

bsa7b.o: bsa7b.s
	as -g bsa7b.s -o bsa7b.o

.PHONY: clean
clean:
	rm *.o
	rm Build/DEBUG/*

