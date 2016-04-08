# bug-free-eureka

Demonstrating some problems I'm having with the OS X linker on Xcode 7.3.

```
$ make
/Applications/Xcode.app/Contents/Developer/usr/bin/make -C one/src
cc -I ../../include   -c -o one.o one.c
cc -dynamiclib -undefined dynamic_lookup -flat_namespace -o ../lib/lib1.dylib one.o
/Applications/Xcode.app/Contents/Developer/usr/bin/make -C two/src
cc -I ../../include   -c -o two.o two.c
cc -dynamiclib -undefined dynamic_lookup -flat_namespace -L ../../one/lib -o ../lib/lib2.dylib two.o -l1
/Applications/Xcode.app/Contents/Developer/usr/bin/make -C three/src
cc -I ../../include   -c -o three.o three.c
cc -dynamiclib -undefined dynamic_lookup -flat_namespace -L ../../two/lib -L ../../one/lib -o ../lib/lib3.dylib three.o -l2
ld: file not found: ../lib/lib1.dylib for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make[1]: *** [../lib/lib3.dylib] Error 1
make: *** [all] Error 2
```

## What does the name mean?

That was the random name suggestion given by GitHub. It was so good, I had to
use it.
