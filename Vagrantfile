# -*- mode: ruby -*-
# vi: set ft=ruby :

require "yaml"
setting = YAML.load_file "vagrant.yml"

Vagrant.configure(2) do |config|
    config.vm.box = "bento/ubuntu-16.04"

    config.vm.hostname = setting['vm_hostname']
    config.vm.network "public_network", ip: setting['vm_public_network']
    config.vm.network "private_network", ip: setting['vm_private_network']

    config.vm.provider "virtualbox" do |v|
        v.memory = setting['vm_memory']
        v.cpus = setting['vm_cpus']
    end

    config.vbguest.auto_update = setting['vm_vbguest_auto_update']
    config.vbguest.no_remote = setting['vm_vbguest_no_remote']

    config.vm.provision "shell", inline: "sudo rm -f /var/lib/dpkg/lock"
    config.vm.provision "shell", path: "provision/001-keys.sh"
    config.vm.provision "shell", path: "provision/002-ansible.sh"
    config.vm.provision "shell", inline: "sudo ansible-galaxy install -f -r /vagrant/ansible/.roles.yml"
    config.vm.provision "shell", inline: "sudo ansible-playbook -i 'localhost,' -c local /vagrant/ansible/provision.yml"

    setting['vm_synced_folders'].each do |i|
        config.vm.synced_folder i['host'], i['guest']
    end
end