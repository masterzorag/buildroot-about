# buildroot-about
buildroot notes and sample configurations, multitargeted.

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![master](https://img.shields.io/badge/Contains-Binaries-bb11ff.svg)]()  


### Setup the buildroot toolchain
```
BUILDROOTDIR=/path/to/buildroot/build/folder
export PATH=$BUILDROOTDIR/output/host/usr/bin:$PATH
```

### X compile
With Makefiles, just ask for your compiler
`make CC=mips-buildroot-linux-uclibc-gcc CXX=mips-buildroot-linux-uclibc-g++ LD=mips-buildroot-linux-uclibc-ld`
