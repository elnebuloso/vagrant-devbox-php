# -*- mode: ruby -*-
# vi: set ft=ruby :
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

require "yaml"
setting = YAML.load_file "box.yml"
ansible_provisioning = "base"

Vagrant.configure(2) do |config|
    config.vm.box = "bento/ubuntu-14.04"
    config.vm.hostname = "box.entwickl.de"
    config.vm.network "private_network", ip: "192.168.33.100"

    config.vm.provision "shell", path: "provision/001-keys.sh"
    config.vm.provision "shell", path: "provision/002-ansible.sh"
    config.vm.provision "shell", inline: "sudo PYTHONUNBUFFERED=1 ansible-playbook -i \"localhost,\" -c local /vagrant/ansible/install.yml"

    setting['vagrant_synced_folders'].each do |i|
        config.vm.synced_folder i['host'], i['guest']
    end
end