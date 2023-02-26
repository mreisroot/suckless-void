#!/bin/sh

sudo su <<- EOF
  # Upgrade xbps
  xbps-install -Su --yes xbps

  # Install git
  xbps-install -S --yes git

  # Change root user password
  printf "vagrant\nvagrant" | passwd root

  # Change root user shell
  usermod -s /bin/bash root

  # Execute suckless void script
  git clone https://gitlab.com/mreisroot/suckless-void.git \${HOME}/suckless-void/
  cd \${HOME}/suckless-void
  chmod +x suckless-void.sh
  ./suckless-void.sh
EOF
