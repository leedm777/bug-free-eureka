LD = $(CC) -dynamiclib -undefined dynamic_lookup -flat_namespace -L ../../lib -Wl,-rpath -Wl,@loader_path/ -Wl,-dylinker_install_name -Wl,@rpath/lib3.dylib 
CFLAGS += -I ../../include

../../lib/lib3.dylib: three.o
	$(LD) -o $@ $< -l2 -l1

%.o: osx-linker.h
