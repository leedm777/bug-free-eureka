LD = $(CC) -dynamiclib -undefined dynamic_lookup -flat_namespace -Wl,-rpath -Wl,@loader_path/ -Wl,-dylinker_install_name -Wl,@rpath/lib1.dylib 
CFLAGS += -I ../../include

../../lib/lib1.dylib: one.o
	$(LD) -o $@ $<

%.o: osx-linker.h
