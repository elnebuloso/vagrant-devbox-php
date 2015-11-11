# -*- mode: ruby -*-
# vi: set ft=ruby :
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
    end

    config.vm.box = "chef/ubuntu-14.04"
    config.vm.hostname = "box.entwickl.de"

    config.vm.network "private_network", ip: "192.168.33.100"
    config.vm.network "public_network", ip: "192.168.178.100", bridge: "Realtek PCIe GBE Family Controller"

    config.vm.provision "shell", path: "provision/001-keys.sh"
    config.vm.provision "shell", path: "provision/002-ansible.sh"

    # provisioning over ansible playbook
    config.vm.provision "shell", inline: "sudo PYTHONUNBUFFERED=1 ansible-playbook -i \"localhost,\" -c local /vagrant/ansible/playbook.yml"
end