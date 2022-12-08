테스트 방법
===========

컴파일을 하여 오브젝트 파일을 만듭니다.
```
gcc -c ex1.c
gcc -c ex2.c
g++ -c ex3.cxx
g++ -c ex4.cxx
g++ -c ex5.cxx
```

링크하여 실행 파일을 만듭니다.
```
gcc -o ex1 ex1.o ex2.o
g++ -o ex3 ex3.o ex2.o
g++ -o ex4 ex4.o ex5.o
```

ex1.o, ex2.o의 내용을 확인합니다.
```
nm ex1.o
nm ex2.o
```
