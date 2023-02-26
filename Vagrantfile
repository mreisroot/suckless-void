Vagrant.configure("2") do |config|

  # Define provider and allocate resources
  config.vm.provider "virtualbox" do |v|
    v.name = "suckless_void"
    v.cpus = 1
    v.memory = 1024
    v.gui = true
  end

  # Define hostname and OS
  config.vm.hostname = "void"
  config.vm.box = "voidlinux/musl64"
  config.vm.box_version = "20210514"

  # Provision VM
  config.vm.provision "shell", path: "provision.sh"

end
