Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"

  # Control Plane Node
  config.vm.define "controlplane" do |controlplane|
    controlplane.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.cpus = 2
    end
    controlplane.vm.network "private_network", ip: "192.168.56.100"
  end
  # Worker Node 1
  config.vm.define "node1" do |node1|
    node1.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    node1.vm.network "private_network", ip: "192.168.56.101"
  end

  # Worker Node 2
  config.vm.define "node2" do |node2|
    node2.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    node2.vm.network "private_network", ip: "192.168.56.102"
  end
end