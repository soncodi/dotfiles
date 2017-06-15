#!/bin/bash

set -e

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  echo "need sudo"
  exit
fi

USR_HOME=~$SUDO_USER

cat ./cfg/.bashrc >> "$USR_HOME"/.bashrc
cp  ./cfg/.gitconfig "$USR_HOME"/.gitconfig
cp  ./cfg/.inputrc "$USR_HOME"/.inputrc
cp  ./cfg/.vimrc "$USR_HOME"/.vimrc

cp  ./cfg/90-mouse.conf /usr/share/X11/xorg.conf.d/
cat ./cfg/limits.conf >> /etc/security/limits.conf
cp  ./cfg/mongodb.service /lib/systemd/system/
cat ./cfg/sysctl.conf >> /etc/sysctl.conf && sysctl -p
