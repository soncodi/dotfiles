
# OP3 rules [v:p 05c6:676c]
lsusb
# ... Bus 001 Device 012: ID {vendorid}:{productid} Vendor, Inc.
# /etc/udev/rules.d/51-android.rules
# chmod a+r
SUBSYSTEM=="usb", ATTR{idVendor}=="05c6", MODE="0666", GROUP="plugdev"
sudo service udev restart

# OP3 MTP
sudo apt-get install libmtp-dev mtpfs
# /lib/udev/rules.d/69-libmtp.rules
ATTR{idVendor}=="05c6", ATTR{idProduct}=="676c", SYMLINK+="libmtp-%k", MODE="660", GROUP="audio", ENV{ID_MTP_DEVICE}="1", ENV{ID_MEDIA_PLAYER}="1", TAG+="uaccess"
