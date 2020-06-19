CC=gcc
CFLAGS=-I. -g
PASM=pasm
OBJS=test.o pru.o prussdrv/prussdrv.o
TARGET=test
FIRMWARE=pru1.bin pru0.bin

all: $(TARGET) $(FIRMWARE)

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

%.bin: %.p
	$(PASM) -V3 -b $<

$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS) 

clean:
	rm -f $(OBJS) $(TARGET) $(FIRMWARE)
