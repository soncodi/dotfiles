
# gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.peripherals.keyboard delay 275
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 10

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

# gnome-shell top bar gradient
# /usr/share/gnome-shell/theme/ubuntu.css L#1951
# /* panel.solid { ... } */

# Atheros QCA6174 firmware
sudo wget -O /lib/firmware/ath10k/QCA6174/hw3.0/firmware-6.bin \
  https://github.com/kvalo/ath10k-firmware/raw/master/QCA6174/hw3.0/4.4.1/firmware-6.bin_WLAN.RM.4.4.1-00132-QCARMSWP-1

sudo wget -O /lib/firmware/ath10k/QCA6174/hw3.0/board-2.bin \
  https://github.com/kvalo/ath10k-firmware/raw/master/QCA6174/hw3.0/board-2.bin

# enable VM USB
sudo adduser $USER vboxusers

# irc
# ircs://server.com:9999/?pass=password
# /msg *sasl mechanism
# /msg *sasl mechanism plain
# /msg *sasl set username password

# key => ppk
# puttygen key.pem -o key.ppk -O private
# puttygen key.pem -o key.pub -O public

# putty => key
# puttygen key.ppk -O private-openssh -o key.key

# pem
# openssl x509 -in bundle.crt -out bundle.pem -outform PEM
