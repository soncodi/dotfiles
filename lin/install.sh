
# deps
apt install \
  curl \
  gparted \
  build-essential \
  htop \
  tree \
  git \
  vim \
  byobu \
  fail2ban \
  dconf-editor \
  gnome-tweaks \
  chrome-gnome-shell

# deb: https://packages.ubuntu.com/groovy/ttf-mscorefonts-installer
apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

# # p4merge
# cd ~/Desktop/p4v-*
# sudo mkdir /opt/p4v
# sudo mv * /opt/p4v
# sudo ln -s /opt/p4v/bin/p4merge /usr/local/bin/p4merge
# apt install libxcb-xinerama0

# # FF playback
# apt install libavcodec-extra

# # android udev
# # https://github.com/M0Rf30/android-udev-rules/blob/master/51-android.rules
# # /etc/udev/rules.d/51-android.rules
# sudo usermod -aG plugdev $LOGNAME

apt purge \
  kerneloops \
  ubuntu-report \
  popularity-contest \
  apport \
  whoopsie

# apt purge cups cups-common

ufw enable
ufw status verbose
cat /var/log/ufw.log
# ufw disable

# sudo apt purge snapd gnome-software-plugin-snap
# sudo rm -rf /var/cache/snapd/
# rm -rf ~/snap

# # fp
# # http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/
# # sudo dpkg -i libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1_amd64.deb
# sudo pam-auth-update

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

# sudo systemctl disable sssd
# sudo systemctl disable openvpn
# # systemctl disable cups.service cups.socket cups.path cups-browsed.service

# extensions
# cd /usr/share/glib-2.0 && glib-compile-schemas .
# /usr/share/gnome-shell/extensions
# /usr/share/glib-2.0/schemas
# ~/.local/share/gnome-shell/extensions
# ~/.local/share/glib-2.0/schemas

# remove emoji input
ibus-setup

# misc
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.peripherals.keyboard delay 275
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 10
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat
gsettings set org.gnome.settings-daemon.peripherals.mouse double-click 200
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu []
gsettings set org.gnome.desktop.wm.keybindings switch-windows []
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward []
gsettings set org.gnome.desktop.wm.keybindings switch-applications ["'<Alt>Tab'"]
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward ["'<Shift><Alt>Tab'"]
# gsettings set org.freedesktop.ibus.general.hotkey trigger []
# gsettings set org.freedesktop.ibus.general.hotkey triggers []

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm config set save-prefix='~'
npm config set send-metrics=false
