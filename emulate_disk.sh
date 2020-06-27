dd if=/dev/zero of=mydisk.img bs=1M count=20
modprobe loop
losetup  /dev/loop0 mydisk.img
mkfs.ext3 /dev/loop0
mount /dev/loop0 /mnt
