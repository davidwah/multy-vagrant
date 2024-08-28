Vagrant.configure("2") do |config|
    # Master VM
    config.vm.define "master" do |master|
      master.vm.box = "bento/ubuntu-22.0"
      master.vm.hostname = "vm-master"
      master.vm.network "private_network", type: "dhcp"
      master.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
      master.vm.provision "shell", path: "setup_master.sh"
    end
  
    # Worker 1 VM
    config.vm.define "worker1" do |worker|
      worker.vm.box = "bento/ubuntu-22.0"
      worker.vm.hostname = "vm-worker1"
      worker.vm.network "private_network", type: "dhcp"
      worker.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 1
      end
      worker.vm.provision "shell", path: "setup_worker.sh"
    end
  
    # Worker 2 VM
    config.vm.define "worker2" do |worker|
      worker.vm.box = "bento/ubuntu-22.0"
      worker.vm.hostname = "vm-worker2"
      worker.vm.network "private_network", type: "dhcp"
      worker.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 1
      end
      worker.vm.provision "shell", path: "setup_worker.sh"
    end
  end
  