CC=gcc
CFLAGS="-Wall"

debug:clean
	$(CC) $(CFLAGS) -g -o helloworld helloworld.c
stable:clean
	$(CC) $(CFLAGS) -o helloworld helloworld.c
asm:clean
	yasm -f elf -o helloworld helloworld.asm
	chmod +x helloworld
clean:
	rm -vfr *~ helloworld
