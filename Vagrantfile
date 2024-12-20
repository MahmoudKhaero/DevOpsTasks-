Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"

  # Control Plane Node
  config.vm.define "controlplane" do |controlplane|
    controlplane.vm.hostname = "controlplane"
    controlplane.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.cpus = 2
    end
    controlplane.vm.network "private_network", ip: "10.0.2.100"
    #controlplane.vm.network "public_network", ip: "192.168.56.100", bridge: "en0" 
    controlplane.vm.provision "file", source: "containerd.sh", destination: "scripts/containerd.sh"
    controlplane.vm.provision "shell", inline: <<-SHELL
    ./scripts/containerd.sh
  SHELL
    controlplane.vm.provision "file", source: "coll.sh", destination: "scripts/coll.sh"
    controlplane.vm.provision "shell", inline: <<-SHELL
    ./scripts/coll.sh
  SHELL
    controlplane.vm.provision "file", source: "control.sh", destination: "scripts/controll.sh"
  end

  # Worker Node 1
  config.vm.define "node1" do |node1|
    node1.vm.hostname = "node1"
    node1.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    node1.vm.network "private_network", ip: "10.0.2.101"
    #node1.vm.network "public_network", ip: "192.168.56.101", bridge: "en0" 
    node1.vm.provision "file", source: "containerd.sh", destination: "scripts/containerd.sh"
    node1.vm.provision "shell", inline: <<-SHELL
    ./scripts/containerd.sh
  SHELL
    node1.vm.provision "file", source: "coll.sh", destination: "scripts/coll.sh"
    node1.vm.provision "shell", inline: <<-SHELL
    ./scripts/coll.sh
  SHELL
  end

  # Worker Node 2
  config.vm.define "node2" do |node2|
    node2.vm.hostname = "node2"
    node2.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
    node2.vm.network "private_network", ip: "10.0.2.102"
    #node2.vm.network "public_network", ip: "192.168.56.102", bridge: "en0" 
    node2.vm.provision "file", source: "containerd.sh", destination: "scripts/containerd.sh"
    node2.vm.provision "shell", inline: <<-SHELL
    ./scripts/containerd.sh
  SHELL
    node2.vm.provision "file", source: "coll.sh", destination: "scripts/coll.sh"
    node2.vm.provision "shell", inline: <<-SHELL
    ./scripts/coll.sh
  SHELL
  end
end
