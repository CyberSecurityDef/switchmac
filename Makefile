TARGET = switchmac
PREFIX = /sbin
CFLAGS = -Wall -Wextra
CC = gcc
OBJECTS = switchmac.o setmac.o getmac.o 

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)	
	
switchmac.o: switchmac.c
	$(CC) $(CFLAGS) -c switchmac.c

setmac.o: setmac.c setmac.h
	$(CC) $(CFLAGS) -c setmac.c
	
getmac.o: getmac.c getmac.h
	$(CC) $(CFLAGS) -c getmac.c
	
clean:
	rm -rf *.o switchmac
	
install: 
	install $(TARGET) $(PREFIX)
	
uninstall:
	rm -rf $(PREFIX)/$(TARGET)
	
