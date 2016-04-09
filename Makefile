all:
	mkdir -p lib
	$(MAKE) -C one/src
	$(MAKE) -C two/src
	$(MAKE) -C three/src
.PHONY: all

clean:
	rm -f lib/*.dylib */src/*.o
.PHONY: clean
