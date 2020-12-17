
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

apt purge \
  kerneloops \
  ubuntu-report \
  popularity-contest \
  apport \
  whoopsie

# sudo apt purge snapd gnome-software-plugin-snap
# sudo rm -rf /var/cache/snapd/
# rm -rf ~/snap

# fp
# http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/
# sudo dpkg -i libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1_amd64.deb
sudo pam-auth-update

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

# sudo systemctl disable sssd
# sudo systemctl disable openvpn
# # systemctl disable cups.service cups.socket cups.path cups-browsed.service

# remove extensions
rm -rf /usr/share/gnome-shell/extensions/*

# remove emoji input
ibus-setup

# misc
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.peripherals.keyboard delay 275
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 10
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat
gsettings set org.gnome.settings-daemon.peripherals.mouse double-click 250
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
