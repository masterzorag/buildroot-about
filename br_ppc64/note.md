ppc64
=====


* store snapshot
 cd br_ppc64
 cp /home/user/br_ppc64/images/vmlinux images/
 cp /home/user/br_ppc64/images/rootfs.cpio.xz images/


* Test on emulated qemu-system-TARGET
 qemu-system-ppc64 \
  -kernel images/vmlinux \
  -initrd images/rootfs.cpio.xz \
  -vnc :2 -vga std -m 512 \
  -netdev user,id=net0 -device virtio-net-pci,netdev=net0 \
  -device virtio-keyboard-pci

