#!/bin/bash

set -e

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  echo "need sudo"
  exit
fi

add-apt-repository -y ppa:certbot/certbot
add-apt-repository -y ppa:byobu/ppa
add-apt-repository -y ppa:git-core/ppa
add-apt-repository -y ppa:byobu/ppa

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.4.list

echo "deb https://deb.nodesource.com/node_7.x xenial main
deb-src https://deb.nodesource.com/node_7.x xenial main" > /etc/apt/sources.list.d/nodesource.list

apt-get update
apt-get install -y \
  htop build-essential fail2ban certbot \
  git byobu nodejs mongodb-org
