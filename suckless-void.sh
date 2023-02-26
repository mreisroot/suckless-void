#!/bin/sh

# Get user and home directory
user=$USER
home=$HOME

sudo su <<- EOF

  # Variables
  user="$user"
  home="$home"
  dependencies="base-devel tcc xorg-minimal xorg-fonts xf86-video-intel mesa libX11-devel libXft-devel libXinerama-devel xinit xrdb xrandr unclutter xclip xbacklight redshift alsa-utils vim tmux lynx pass pcmanfm"
  tools="dwm dmenu st slstatus"

  # Upgrade system and install dependencies
  xbps-install -Syyu --yes
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
    make clean install;
  done

  # Copy .xinitrc \${home}/.xinitrc
  cp \${home}/suckless-void/.xinitrc \${home}/.xinitrc

  # Adjusting permissions
  chown -R \${user}:\${user} \${home}/.config
  chown \${user}:\${user} \${home}/.xinitrc

EOF
