# buildroot sample for i386

Example case:  
You need to build a minimal (uClibc-ng) bootable ISO to perform tasks on generic x86 machines  

* Custom configs are included
```sh
$ grep CONFIG defconfig  
BR2_UCLIBC_CONFIG="$(CONFIG_DIR)/uclibc-defconfig"  
BR2_LINUX_KERNEL_USE_CUSTOM_CONFIG=y  
BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE="$(CONFIG_DIR)/kernel-defconfig"  
BR2_PACKAGE_BUSYBOX_CONFIG="$(CONFIG_DIR)/busybox-defconfig"  
```
