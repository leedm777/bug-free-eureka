LD = $(CC) -dynamiclib -undefined dynamic_lookup -flat_namespace -L ../../one/lib
CFLAGS += -I ../../include

../lib/lib2.dylib: two.o
	$(LD) -o $@ $< -l1

%.o: osx-linker.h
