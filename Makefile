CC=gcc
CFLAGS="-Wall"

debug:clean
	$(CC) $(CFLAGS) -g -o helloworld helloworld.c
stable:clean
	$(CC) $(CFLAGS) -o helloworld helloworld.c
asm:clean
	yasm -f elf -o helloasm helloworld.asm
	chmod +x helloasm
clean:
	rm -vfr *~ helloworld helloasm
