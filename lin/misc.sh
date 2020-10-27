
# key => ppk
# puttygen key.pem -o key.ppk -O private
# puttygen key.pem -o key.pub -O public

# putty => key
# puttygen key.ppk -O private-openssh -o key.key

# pem
# openssl x509 -in bundle.crt -out bundle.pem -outform PEM
