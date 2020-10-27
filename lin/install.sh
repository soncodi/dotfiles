
# deps
apt install \
  curl \
  gparted \
  build-essential \
  htop \
  git \
  vim \
  byobu \
  fail2ban \
  dconf-editor \
  gnome-tweaks \
  chrome-gnome-shell

apt purge \
  ubuntu-report \
  popularity-contest \
  apport \
  whoopsie

# fp
# http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/
# sudo dpkg -i libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1_amd64.deb
sudo pam-auth-update

# deb: https://packages.ubuntu.com/groovy/ttf-mscorefonts-installer
apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

# remove extensions
rm -rf /usr/share/gnome-shell/extensions/*

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

# purge snap
# sudo rm -rf /var/cache/snapd/
# sudo apt remove --purge snapd gnome-software-plugin-snap
# rm -rf ~/snap

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm config set save-prefix='~'

# remove emoji input
ibus-setup
