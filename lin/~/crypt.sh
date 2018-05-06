#!/bin/bash

set -e

device=cryptdev
fs="/xx/crypt.fs"
folder="/yy/cryptfs"

if [[ "$1" == "on" ]]; then
  mkdir -p "$folder"
  sudo cryptsetup luksOpen "$fs" "$device"
  sudo mount -o umask=0022,gid=1000,uid=1000 /dev/mapper/"$device" "$folder"
elif [[ "$1" == "off" ]]; then
  sudo umount "$folder"
  sudo cryptsetup luksClose "$device"
  rmdir "$folder" --ignore-fail-on-non-empty
elif [[ $1 == "make" && "$2" -gt 3 ]]; then
  dd if=/dev/urandom of="$fs" bs=1M count="$2"
  cryptsetup luksFormat -v --hash sha256 --key-size 512 --cipher aes-xts-plain64 --iter-time 2000 "$fs"
  sudo cryptsetup luksOpen "$fs" "$device"
  sudo mkfs.ntfs --fast --verbose /dev/mapper/"$device" # no gid/uid via ext3/4
  sudo cryptsetup luksClose "$device"
else
  echo "on|off|make [size-mb]"
fi
