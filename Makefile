.PHONY: all ex1 ex3 ex4 ex1a

help:
	@echo make ex1
	@echo make ex3
	@echo make ex4
	@echo make ex1a
	@echo make all

all: ex1 ex3 ex4 ex1a

clean:
	rm -f *.o *.i *.s ex1 ex3 ex4 ex1a *.map

ex1:
	gcc -o ex1.o -c ex1.c
	gcc -o ex2.o -c ex2.c
	gcc -o ex1 ex1.o ex2.o

ex3:
	g++ -o ex3.o -c ex3.cxx
	g++ -o ex3 ex2.o ex3.o

ex4:
	g++ -o ex4.o -c ex4.cxx
	g++ -o ex5.o -c ex5.cxx
	g++ -o ex4 ex4.o ex5.o

ex1a:
	gcc -g -o ex1a.o -c ex1.c
	gcc -g -o ex2a.o -c ex2.c
	gcc -g -o ex1a ex1a.o ex2a.o

nm1:
	nm ex1.o
nm2:
	nm ex2.o
nm3:
	nm ex3.o
nm4:
	nm ex4.o
nm5:
	nm ex5.o
nm3c:
	nm -C ex3.o
nm4c:
	nm -C ex4.o
nm5c:
	nm -C ex5.o

od1:
	objdump -xd ex1.o
od2:
	objdump -xd ex2.o
od3:
	objdump -xd ex3.o
od4:
	objdump -xd ex4.o
od5:
	objdump -xd ex5.o
odex1:
	objdump -xd ex1
odex3:
	objdump -xd ex3
odex4:
	objdump -xd ex4
