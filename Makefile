all: httpd client
LIBS = -pthread #-lsocket
httpd: httpd.c
	gcc -g3 -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd client
