LD = $(CC) -dynamiclib -undefined dynamic_lookup -flat_namespace -L ../../two/lib -L ../../one/lib
CFLAGS += -I ../../include

../lib/lib3.dylib: three.o
	$(LD) -o $@ $< -l2

%.o: osx-linker.h
