LD = $(CC) -dynamiclib -undefined dynamic_lookup -flat_namespace
CFLAGS += -I ../../include

../lib/lib1.dylib: one.o
	$(LD) -o $@ $<

%.o: osx-linker.h
