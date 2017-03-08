# buildroot sample for mips(eb/el)

Example case:  
You need to build static programs to run on (Big or Little Endian) mips processors  

* Just need two separate toolchains:
```sh
$ diff -y *conf* | grep "|"  
BR2_mips=y                                            | BR2_mipsel=y  
BR2_EXTRA_GCC_CONFIG_OPTIONS="--with-endian=big ... " | BR2_EXTRA_GCC_CONFIG_OPTIONS="--with-endian=little ... "  
```

* Setup cross-toolchain, for mipseb  
```sh
BUILDROOTDIR=/mnt/share/br_mipseb  
export PATH=$BUILDROOTDIR/host/usr/bin:$PATH  

mips-linux-gcc -v  
Using built-in specs.  
Target: mips-buildroot-linux-uclibc  
Configured with: ./configure --prefix=/mnt/share/br_mipseb/host/usr --sysconfdir=/mnt/share/br_mipseb/host/etc --enable-static --target=mips-buildroot-linux-uclibc --with-sysroot=/mnt/share/br_mipseb/host/usr/mips-buildroot-linux-uclibc/sysroot --disable-__cxa_atexit --with-gnu-ld --disable-libssp --disable-multilib --with-gmp=/mnt/share/br_mipseb/host/usr --with-mpc=/mnt/share/br_mipseb/host/usr --with-mpfr=/mnt/share/br_mipseb/host/usr --with-pkgversion='Buildroot 2017.02-rc1' --with-bugurl=http://bugs.buildroot.net/ --disable-libquadmath --disable-libsanitizer --enable-tls --disable-libmudflap --enable-threads --without-isl --without-cloog --with-float=soft --disable-decimal-float --with-arch=mips32 --with-abi=32 --enable-languages=c,c++ --with-build-time-tools=/mnt/share/br_mipseb/host/usr/mips-buildroot-linux-uclibc/bin --disable-shared --disable-libcilkrts --disable-libgomp --with-endian=big --disable-libquadmath --disable-multilib --disable-shared --disable-gprof --disable-__cxa_atexit --disable-lto --enable-languages=c,c++ --disable-libssp --disable-libatomic  
Thread model: posix  
gcc version 6.3.0 (Buildroot 2017.02-rc1)  
```

* Cross-compile  
`mips-linux-gcc hello.c -o hello`  

* Check  
```sh
$ file hello  
  hello: ELF 32-bit MSB executable, MIPS, MIPS32 version 1 (SYSV), statically linked, not stripped  

$ readelf -h hello | head  
  ELF Header:  
  Magic:   7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 00  
  Class:                             ELF32  
  Data:                              2's complement, big endian  
  Version:                           1 (current)  
  OS/ABI:                            UNIX - System V  
  ABI Version:                       0  
  Type:                              EXEC (Executable file)  
  Machine:                           MIPS R3000  
  Version:                           0x1  

mips-linux-strip -s hello  
```

* Test in qemu Linux CPU emulator (compiled for mips emulation)  
`qemu-mips ./hello`  

* With Makefiles, just ask for your compiler  
`make CC=mips-linux-gcc CXX=mips-linux-g++ LD=mips-linux-ld`  
