# vagrant-devbox-php

full stack php development box

## requirements

- VirtualBox >= 5.0.14
- Vagrant >= 1.8.1

### required vagrant plugins

- vagrant plugin install vagrant-vbguest

## setup

- copy vagrant.yml.tpl as vagrant.yml to configure vagrant provisioning
- copy ansible/vars/all.yml.tpl as vars/all.yml to configure ansible provisioning

## ansible provisioning

### vagrant provisioning installing ansible roles

```
sudo ansible-galaxy install -r /vagrant/ansible/install-roles.yml
```

### vagrant provisioning running playbook 

```
sudo ansible-playbook -i 'localhost,' -c local /vagrant/ansible/install.yml
```

### global installed roles through ansible galaxy

- https://galaxy.ansible.com/elnebuloso/server-base/
- https://galaxy.ansible.com/elnebuloso/php56/
- https://galaxy.ansible.com/elnebuloso/ci/
- https://galaxy.ansible.com/elnebuloso/ci-vcs/
- https://galaxy.ansible.com/elnebuloso/ci-compass/
- https://galaxy.ansible.com/elnebuloso/ci-jenkins/
- https://galaxy.ansible.com/elnebuloso/ci-phing-commons/
- https://galaxy.ansible.com/elnebuloso/docker/
- https://galaxy.ansible.com/elnebuloso/docker-mysql/
- https://galaxy.ansible.com/elnebuloso/docker-memcached/
- https://galaxy.ansible.com/elnebuloso/docker-swagger-editor/
- https://galaxy.ansible.com/elnebuloso/docker-swagger-generator/
- https://galaxy.ansible.com/geerlingguy/composer/
- https://galaxy.ansible.com/carlosbuenosvinos/ansistrano-deploy/
- https://galaxy.ansible.com/carlosbuenosvinos/ansistrano-rollback/

## connecting the box over ssh

- your-hostname-from-vagrant-yml:22
- provisioning will create automatically dot/ssh/vagrant folder with private and public keys
  - id_rsa
  - id_rsa.pub
  - id_rsa.ppk for putty pageant
- if there is an existing folder dot/ssh/vagrant folder with private and public keys, then provisioning skips the creation
- you can put your created private and public keys in dot/ssh/vagrant, so they will be used

## features (default settings and default role configurations)

- php 5.6 + apache2
- compass
- composer
- phing-commons
- jenkins

### php 5.6 + apache2

- http://box.entwickl.de/
- virtual document roots under /var/www/**
- each directory that has a public folder e.g. /var/www/foo/public/index.php can be called e.g. http://foo.box.entwickl.de/

### jenkins

- http://jenkins.box.entwickl.de/

### docker

#### docker mysql

- http://box.entwickl.de:3306
- https://hub.docker.com/_/mysql/
- user: root
- pass: welcome

#### docker memcached

- http://box.entwickl.de:11211
- https://hub.docker.com/_/memcached/

#### docker swagger-editor

- http://swagger-editor.box.entwickl.de
- https://hub.docker.com/r/swaggerapi/swagger-editor/

#### docker swagger-generator

- http://swagger-generator.box.entwickl.de
- https://hub.docker.com/r/swaggerapi/swagger-generator