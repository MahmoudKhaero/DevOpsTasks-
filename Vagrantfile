Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"

  # Control Plane Node
  config.vm.define "controlplane" do |controlplane|
    controlplane.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.cpus = 2
    end
    controlplane.vm.network "private_network", ip: "192.168.56.100"
    #controlplane.vm.provision "file", source: "containerd-2.0.0-linux-amd64.tar.gz", destination: "scripts/containerd-2.0.0-linux-amd64.tar.gz"
    #controlplane.vm.provision "file", source: "cni-plugins-linux-amd64-v1.1.1.tgz", destination: "scripts/cni-plugins-linux-amd64-v1.1.1.tgz"
    controlplane.vm.provision "file", source: "containerd.sh", destination: "scripts/containerd.sh"
    controlplane.vm.provision "file", source: "coll.sh", destination: "scripts/coll.sh"
    controlplane.vm.provision "file", source: "control.sh", destination: "scripts/controll.sh"
  end
  # Worker Node 1
  config.vm.define "node1" do |node1|
    node1.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    node1.vm.network "private_network", ip: "192.168.56.101"
    #node1.vm.provision "file", source: "containerd-2.0.0-linux-amd64.tar.gz", destination: "scripts/containerd-2.0.0-linux-amd64.tar.gz"
    #node1.vm.provision "file", source: "cni-plugins-linux-amd64-v1.1.1.tgz", destination: "scripts/cni-plugins-linux-amd64-v1.1.1.tgz"
    node1.vm.provision "file", source: "containerd.sh", destination: "scripts/containerd.sh"
    node1.vm.provision "file", source: "coll.sh", destination: "scripts/coll.sh"
  end

  # Worker Node 2
  config.vm.define "node2" do |node2|
    node2.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    node2.vm.network "private_network", ip: "192.168.56.102"
    #node2.vm.provision "file", source: "containerd-2.0.0-linux-amd64.tar.gz", destination: "scripts/containerd-2.0.0-linux-amd64.tar.gz"
    #node2.vm.provision "file", source: "cni-plugins-linux-amd64-v1.1.1.tgz", destination: "scripts/cni-plugins-linux-amd64-v1.1.1.tgz"
    node2.vm.provision "file", source: "containerd.sh", destination: "scripts/containerd.sh"
    node2.vm.provision "file", source: "coll.sh", destination: "scripts/coll.sh"
  end
end