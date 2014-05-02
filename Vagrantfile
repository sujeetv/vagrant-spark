# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "spark64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/20140310/precise-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.provider :virtualbox do |vb|
    #vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.memory=2048
    vb.cpus = 2
  end
  config.vm.define "master" do |master|
    master.vm.box = "spark64"
    master.vm.hostname = "master"
    master.vm.network :private_network, ip: "10.10.10.5"
    master.vm.provision "shell" do |s|
      s.path="run_master.sh"
    end
  end
    
  config.vm.define "slave1" do |slave1|
    slave1.vm.box = "spark64"
    slave1.vm.hostname = "slave1"
    slave1.vm.network :private_network, ip: "10.10.10.6"
    slave1.vm.provision "shell" do |s|
      s.path="run_slave.sh"
      s.args="1"
    end
  end
end
