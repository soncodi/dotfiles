
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

apt purge \
  kerneloops \
  ubuntu-report \
  popularity-contest \
  apport \
  whoopsie \
  ubuntu-advantage-tools \
  sosreport

# apt purge \
#   printer-driver-* \
#   cups*

# apt purge gnome-remote-desktop

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
#sudo ufw delete allow 443/tcp
#sudo sed -i '/ufw-before-input.*icmp/s/ACCEPT/DROP/g' /etc/ufw/before.rules

sudo ufw enable

sudo ufw status verbose
sudo ufw status numbered
cat /var/log/ufw.log
# sudo ufw disable

# /etc/ssh/sshd_config
# Port 1234
# PasswordAuthentication no

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

# remove emoji input
ibus-setup

# disable gpu
sudo prime-select intel
# sudo prime-select nvidia

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
