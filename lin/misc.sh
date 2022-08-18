
# # ttf
# apt install ttf-mscorefonts-installer
# sudo fc-cache -f -v

# # p4merge
# cd ~/Desktop/p4v-*
# sudo mkdir /opt/p4v
# sudo mv * /opt/p4v
# sudo ln -s /opt/p4v/bin/p4merge /usr/local/bin/p4merge
# apt install libxcb-xinerama0

# # FF playback
# apt install libavcodec-extra

# purge snap
# sudo apt purge snapd gnome-software-plugin-snap
# sudo rm -rf /var/cache/snapd/
# rm -rf ~/snap

# extensions
# cd /usr/share/glib-2.0 && glib-compile-schemas .
# /usr/share/gnome-shell/extensions
# /usr/share/glib-2.0/schemas
# /usr/share/gnome-shell/modes/ubuntu.json
# ~/.local/share/gnome-shell/extensions
# ~/.local/share/glib-2.0/schemas

# # fp
# sudo apt install libfprint-2-tod1
# # http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/
# sudo dpkg -i libfprint-2-tod1-goodix_0.0.6-0ubuntu1~somerville1_amd64.deb
# sudo pam-auth-update

# # android udev
# # https://github.com/M0Rf30/android-udev-rules/blob/master/51-android.rules
# # /etc/udev/rules.d/51-android.rules
# sudo usermod -aG plugdev $LOGNAME
