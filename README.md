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

컴파일을 하여 오브젝트 파일을 만들 때, 디버깅 정보를 포함합니다.
```
gcc -g -c ex1.c
gcc -g -c ex2.c
g++ -g -c ex3.cxx
g++ -g -c ex4.cxx
g++ -g -c ex5.cxx
```

링크하여 실행 파일을 만듭니다.
```
gcc -o ex1 ex1.o ex2.o
g++ -o ex3 ex3.o ex2.o
g++ -o ex4 ex4.o ex5.o
```

ex1.o, ex2.o의 심볼을 간단하게 확인합니다.
```
nm ex1.o
nm ex2.o
nm ex3.o
nm ex4.o
nm ex5.o
```

(추가) 링크할 때, map 파일을 만들면서 실행 파일을 만듭니다.
```
gcc -o ex1 -Xlinker -Map=ex1.map ex1.o ex2.o
g++ -o ex3 -Xlinker -Map=ex3.map ex3.o ex2.o
g++ -o ex4 -Xlinker -Map=ex4.map ex4.o ex5.o
```

오브젝트와 실행파일의 심볼들을 자세히 확인합니다.
```
objdump -x ex1.o
objdump -x ex2.o
objdump -x ex3.o
objdump -x ex4.o
objdump -x ex5.o
objdump -x ex1
objdump -x ex3
objdump -x ex4
```

오브젝트와 실행파일의 심볼들을 좀 더 자세히 확인합니다.
```
readelf -a ex1.o
readelf -a ex2.o
readelf -a ex3.o
readelf -a ex4.o
readelf -a ex5.o
readelf -a ex1
readelf -a ex3
readelf -a ex4
```
