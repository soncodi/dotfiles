
# server
apt install \
  curl \
  build-essential \
  htop \
  git \
  vim \
  byobu \
  fail2ban

# desktop
apt install \
  gparted \
  dconf-editor \
  gnome-tweaks \
  chrome-gnome-shell

# ttf
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
# sudo apt purge snapd gnome-software-plugin-snap
# sudo rm -rf /var/cache/snapd/
# rm -rf ~/snap

sudo ufw default deny incoming
sudo ufw default allow outgoing

#sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw allow 1234/tcp
#sudo ufw delete allow 1234/tcp
#sudo sed -i '/ufw-before-input.*icmp/s/ACCEPT/DROP/g' /etc/ufw/before.rules

sudo ufw enable

sudo ufw status verbose
sudo ufw status numbered
cat /var/log/ufw.log
# sudo ufw disable

# /etc/ssh/sshd_config
# Port 1234
# PasswordAuthentication no

# # fp
# sudo apt install libfprint-2-tod1
# # http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/
# sudo dpkg -i libfprint-2-tod1-goodix_0.0.6-0ubuntu1~somerville1_amd64.deb
# sudo pam-auth-update

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

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
gsettings set org.gnome.desktop.peripherals.mouse accel-profile "flat"
gsettings set org.gnome.desktop.peripherals.mouse double-click 200
gsettings set org.gnome.desktop.peripherals.touchpad click-method "fingers"
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu []
gsettings set org.gnome.desktop.wm.keybindings switch-windows []
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward []
gsettings set org.gnome.desktop.wm.keybindings switch-applications ["'<Alt>Tab'"]
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward ["'<Shift><Alt>Tab'"]
gsettings set org.gnome.nautilus.preferences default-folder-viewer "list-view"
gsettings set org.gnome.nautilus.preferences show-image-thumbnails "never"
gsettings set org.gnome.nautilus.list-view default-zoom-level "small"
gsettings set org.gnome.nautilus.list-view default-visible-columns ["'name', 'size', 'owner', 'group', 'permissions', 'date_modified', 'date_created'"]
# gsettings set org.freedesktop.ibus.general.hotkey trigger []
# gsettings set org.freedesktop.ibus.general.hotkey triggers []

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm config set save-prefix='~'
npm config set send-metrics=false
