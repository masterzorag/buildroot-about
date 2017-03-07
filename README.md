# buildroot-about
buildroot notes and sample configurations, multitargeted.

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![master](https://img.shields.io/badge/Contains-Binaries-bb11ff.svg)]()  


### Using provided config files
1.  Create your _buildroot-build_ folder  
1a. Optional, add packages  
2.  Import a sample config  
2a. Optional, make changes
3.  Build the cross-toolchain  
3a. Build (kernel, initrd, or an image)  
3b. Cross compile software  

_Elaborate more here_

### Setup the buildroot toolchain
```
BUILDROOTDIR=/path/to/buildroot-build/folder
export PATH=$BUILDROOTDIR/output/host/usr/bin:$PATH
```

### X (cross)compile
With Makefiles, just ask for your compiler  
`make CC=mips-buildroot-linux-uclibc-gcc CXX=mips-buildroot-linux-uclibc-g++ LD=mips-buildroot-linux-uclibc-ld`
