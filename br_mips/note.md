# buildroot sample for mips(eb/el)

Example case:  
You need to build staic programs to run on (Big or Little Endian) mips processors  

* Just need two separate toolchains
```sh
$ diff -y *conf* | grep "|"  
BR2_mips=y                                            | BR2_mipsel=y  
BR2_EXTRA_GCC_CONFIG_OPTIONS="--with-endian=big ... " | BR2_EXTRA_GCC_CONFIG_OPTIONS="--with-endian=little ... "  
```
