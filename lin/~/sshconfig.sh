
# ~/.ssh/config

# ssh ubuntu@1.2.3.x -J ubuntu@a.b.com

HOST h0
  User ubuntu
  #IdentityFile ~/.ssh/id_rsa.pem
  Hostname a.b.com

HOST 1.2.3.*
  User ubuntu
  ProxyCommand ssh h0 -W %h:%p

HOST h1
  User ubuntu
  ProxyCommand ssh 1.2.3.5 -W %h:%p

HOST h2
  User ubuntu
  ProxyCommand ssh 1.2.3.6 -W hostname:%p
