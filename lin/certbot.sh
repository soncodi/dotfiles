#!/bin/bash

set -eu

# plain
# sudo snap install certbot
sudo certbot certonly \
  --webroot -w /var/www/html/letsencrypt \
  -d example.com \
  -d www.example.com \
  --agree-tos --renew-by-default --expand

# LE *
sudo certbot certonly \
  --manual \
  -d *.sub.example.com \
  -d sub.example.com

# CF *
# sudo snap install certbot-dns-cloudflare
sudo certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials cloudflare.ini \
  --preferred-challenges dns-01 \
  -d *.sub.example.com \
  -d sub.example.com
