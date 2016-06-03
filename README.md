# vagrant-devbox-php

full stack php development box through vagrant, ansible and docker

## requirements

* VirtualBox >= 5.0.14
* Vagrant >= 1.8.1

### required vagrant plugins

* vagrant plugin install vagrant-vbguest

## vagrant provision configuration

* copy Vagrantfile.tpl as Vagrantfile to setup vagrant
* copy box.yml.tpl as box.yml to setup vagrant

## ansible provision configuration

* copy vars/all.yml.tpl as vars/all.yml to setup ansible provisioning

### global installed roles through ansible-galaxy

* https://galaxy.ansible.com/elnebuloso/server-base/
* https://galaxy.ansible.com/elnebuloso/php56-apache2/
* https://galaxy.ansible.com/elnebuloso/ci/
* https://galaxy.ansible.com/elnebuloso/ci-vcs/
* https://galaxy.ansible.com/elnebuloso/ci-compass/
* https://galaxy.ansible.com/elnebuloso/ci-jenkins/
* https://galaxy.ansible.com/elnebuloso/ci-phing-commons/
* https://galaxy.ansible.com/elnebuloso/docker/
* https://galaxy.ansible.com/elnebuloso/docker-mysql/
* https://galaxy.ansible.com/elnebuloso/docker-memcached/
* https://galaxy.ansible.com/elnebuloso/docker-swagger-editor/
* https://galaxy.ansible.com/elnebuloso/docker-swagger-generator/

## connecting over ssh

* box.entwickl.de:22
* provisioning will create automatically dot/ssh/vagrant folder with private and public keys
  * id_rsa
  * id_rsa.pub
  * id_rsa.ppk for putty pageant
* if there is an existing folder dot/ssh/vagrant folder with private and public keys, then provisioning skips the creation
  * you can put your created private and public keys in dot/ssh/vagrant, so they will be used

## running the ansible playbook over console

```
sudo ansible-playbook -i "localhost," -c local /vagrant/ansible/install.yml
```