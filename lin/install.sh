
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
  chrome-gnome-shell \
  nemo

apt purge \
  ubuntu-report \
  popularity-contest \
  apport \
  whoopsie

# manual deb
# apt install ttf-mscorefonts-installer
# https://packages.ubuntu.com/focal/ttf-mscorefonts-installer

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

# nemo
# add `nemo-desktop` to startupapps
# dconf-editor /org/nemo/desktop
gsettings set org.gnome.desktop.background show-desktop-icons false
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.nemo.preferences date-format 'iso'
gsettings set org.nemo.preferences default-folder-viewer 'list-view'
gsettings set org.nemo.desktop show-desktop-icons true
gsettings set org.nemo.icon-view default-zoom-level 'small'
gsettings set org.nemo.desktop trash-icon-visible true
gsettings set org.nemo.desktop use-desktop-grid false
#gsettings set org.nemo.desktop vertical-grid-adjust 1.0
#gsettings set org.nemo.desktop horizontal-grid-adjust 1.0

# nautilus
# xdg-mime default nautilus.desktop inode/directory application/x-gnome-saved-search
# gsettings set org.gnome.desktop.background show-desktop-icons true

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

# # cleanup
# cd /usr/share/gnome-shell/extensions
# rm -rf *

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm config set save-prefix='~'

# remove emoji input
ibus-setup

# # enable VM USB
# sudo adduser $USER vboxusers

# key => ppk
# puttygen key.pem -o key.ppk -O private
# puttygen key.pem -o key.pub -O public

# putty => key
# puttygen key.ppk -O private-openssh -o key.key

# pem
# openssl x509 -in bundle.crt -out bundle.pem -outform PEM

