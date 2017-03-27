all: build 

build: ksender kreceiver
doPackage.o: doPackage.c
	gcc doPackage.c -c
ksender: ksender.o link_emulator/lib.o doPackage.o
	gcc -g ksender.o link_emulator/lib.o doPackage.o -o ksender

kreceiver: kreceiver.o link_emulator/lib.o doPackage.o
	gcc -g kreceiver.o link_emulator/lib.o doPackage.o -o kreceiver

.c.o: 
	gcc -Wall -g -c $? 

clean:
	-rm -f *.o ksender kreceiver 
