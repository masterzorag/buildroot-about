# buildroot sample for ppc64

Example case:  
You need to cross-compile a ppc64 bootloader on your x86 pc  

* Store builted snapshot  
```sh
 cd br_ppc64
 cp /output-folder/images/vmlinux images/
 cp /output-folder/images/rootfs.cpio.xz images/
```

* Test on emulated qemu-system-TARGET
```sh
 qemu-system-ppc64 \
  -kernel images/vmlinux \
  -initrd images/rootfs.cpio.xz \
  -vnc :2 -vga std -m 512 \
  -netdev user,id=net0 -device virtio-net-pci,netdev=net0 \
  -device virtio-keyboard-pci
```
