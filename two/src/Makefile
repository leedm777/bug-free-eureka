LD = $(CC) -dynamiclib -undefined dynamic_lookup -flat_namespace -L ../../lib -Wl,-rpath -Wl,@loader_path/ -Wl,-dylinker_install_name -Wl,@rpath/lib2.dylib
CFLAGS += -I ../../include

../../lib/lib2.dylib: two.o
	$(LD) -o $@ $< -l1

%.o: osx-linker.h
