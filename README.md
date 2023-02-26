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
sudo xbps-install -Su --yes xbps
sudo xbps-install -S --yes git
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

### Testing

If you want to try this script quickly, without having to make a physical installation of Void Linux, you can use the testing environment I'm providing with the [Vagrantfile](./Vagrantfile) and [provision.sh](./provision.sh) files.

The Vagrantfile has the specifications for the VM to be created.

The provision.sh script runs after the VM is created to automatically execute the necessary steps to test the suckless-void.sh script.

1. Make sure you have VirtualBox and Vagrant installed:

* [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Install Vagrant](https://developer.hashicorp.com/vagrant/downloads)

2. Run the following command to create the VM:

`vagrant up`

3. Login credentials

```sh
login: root
password: vagrant
```

4. Starting the window manager

The virtualbox GUI will appear and, after all commands of the provision.sh and suckless-void.sh scripts have been executed, you can test the desktop by running inside the VM:

`startx`

5. To destroy the VM, run:

`vagrant destroy -f`

## License

Licensed under the [GNU General Public License v2.0](./LICENSE)
