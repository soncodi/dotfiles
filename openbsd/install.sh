
# fw_update
# syspatch

pkg_add curl
# pkg_add wpa_supplicant

rcctl disable smtpd
rcctl disable sndiod
# rcctl disable sshd
rcctl enable dhcpd
# rcctl enable wpa_supplicant
