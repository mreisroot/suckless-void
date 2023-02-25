#!/bin/sh

# Get user and home directory
user=$USER
home=$HOME

sudo su <<- EOF

  # Variables
  user="$user"
  home="$home"
  dependencies="base-devel git tcc xorg libXft-devel libX11-devel libXinerama-devel xf86-video-intel xinit xrdb xrandr unclutter xclip redshift xbacklight alsa-utils pcmanfm vim tmux"
  tools="dwm dmenu st slstatus"

  # Install dependencies
  xbps-install -Syy
  xbps-install -u --yes xbps
  xbps-install -Syu --yes
  xbps-install -S --yes \$dependencies

  # Clone repos
  for i in \$tools;
  do
    git clone https://gitlab.com/mreisroot/\${i}.git \${home}/.config/src/\${i};
  done

  # Compile tools
  for i in \$tools;
  do
    cd \${home}/.config/src/\${i};
    sed -i 's/cc/tcc/' config.mk
    make clean install;
  done

  # Copy .xinitrc \${home}/.xinitrc
  cp .xinitrc \${home}/.xinitrc

  # Adjusting permissions
  chown -R \${user}:\${user} \${home}/.config
  chown \${user}:\${user} \${home}/.xinitrc

EOF
