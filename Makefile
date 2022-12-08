.PHONY: all ex1 ex3 ex4 ex1a

help:
	@grep "^[a-zA-Z].*" Makefile | tail -n +4 | tr -d ':' | xargs -n 1 echo make

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

ex1g:
	gcc -g -o ex1a.o -c ex1.c
	gcc -g -o ex2a.o -c ex2.c
	gcc -g -o ex1a ex1a.o ex2a.o

nm1:
	nm ex1.o
objectdump1:
	objdump -xd ex1.o
objectdump1g:
	objdump -xd ex1a.o
objectdump1gs:
	objdump -xdS ex1a.o
objectdump1s:
	objdump -xdS ex1.o
map1:
	gcc -o ex1 -Xlinker -Map=ex1.map ex1.o ex2.o

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

objectdump2:
	objdump -xd ex2.o
objectdump3:
	objdump -xd ex3.o
objectdump4:
	objdump -xd ex4.o
objectdump5:
	objdump -xd ex5.o
objectdump11:
	objdump -xd ex1
objectdump33:
	objdump -xd ex3
objectdump44:
	objdump -xd ex4
readelf1:
	readelf -a ex1.o
readelf2:
	readelf -a ex2.o
readelf3:
	readelf -a ex3.o
readelf4:
	readelf -a ex4.o
readelf5:
	readelf -a ex5.o
readelf1g:
	readelf -a ex1a.o
