
apt-get install ecryptfs-utils cryptsetup gnome-disk-utility

# swap
fallocate -l 8G /swapcrypt
swapcrypt /swapcrypt /dev/urandom swap # /etc/crypttab
/dev/mapper/swapcrypt none swap sw 0 0 # /etc/fstab
cryptdisks_start swapcrypt
swapon -a
swapon -s
cat /proc/swaps

# dm-crypt
#dd if=/dev/urandom of=crypt.fs bs=1M count=1024
#cryptsetup luksFormat crypt.fs
#sudo cryptsetup luksOpen crypt.fs cryptfs
#sudo mkfs.ntfs --fast --verbose /dev/mapper/cryptfs # no gid/uid via ext3/4
#sudo mount /dev/mapper/cryptfs cryptfs

sudo cryptsetup luksOpen crypt.fs cryptfs && \
  sudo mount -o umask=0022,gid=1000,uid=1000 /dev/mapper/cryptfs cryptfs
sudo umount cryptfs && sudo cryptsetup luksClose cryptfs
