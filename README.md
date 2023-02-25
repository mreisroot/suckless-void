# Setup script for a Suckless Void desktop

The [suckless-void.sh](./suckless-void.sh) automatically installs some suckless tools on Void Linux, speeding up the setup process.

The installed tools are:

* dwm
* dmenu
* st
* slstatus

In this project, I'm using the forks I made of these programs, but feel free to use other versions by changing the git repository url on the script file.

## How to use this project

1. Install git

Make sure your machine has git installed:

```sh
sudo xbps-install -Syy
sudo xbps-install -S git
```

2. Clone this project

`git clone https://gitlab.com/mreisroot/suckless-void.git`

or

`git clone https://github.com/mreisroot/suckless-void.git`

3. cd into the script directory

`cd suckless-void`

4. Give the script permission to execute:

`chmod +x suckless-void.sh`

5. Run the script

`./suckless-void.sh`

6. Go to a tty and start Xorg

`startx`

## License

Licensed under the [GNU General Public License v2.0](./LICENSE)
