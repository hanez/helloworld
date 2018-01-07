CC=gcc
CFLAGS="-Wall"

debug:clean
	$(CC) $(CFLAGS) -g -o helloworld helloworld.c
stable:clean
	$(CC) $(CFLAGS) -o helloworld helloworld.c
clean:
	rm -vfr *~ helloworld
