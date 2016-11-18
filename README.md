# vagrant-devbox-php

full stack php development box

## features

- ubuntu 16.04 LTS
- ansible >= 2.0.0
- php 7.0 + apache2
- php phing and commons
- php composer
- continuous integration tools, e.g. optipng, jpegoptim, yui-compressor, closure-compiler, compass
- docker
- docker mysql
- docker memcached
- docker swagger-editor
- docker swagger-generator

## requirements

- VirtualBox >= 5.0.22
- vagrant >= 1.8.4
- vagrant plugin install vagrant-vbguest

## setup

- copy vagrant.yml.tpl as vagrant.yml to configure vagrant provisioning
- copy ansible/vars/all.yml.tpl as vars/all.yml to configure ansible provisioning

## ansible provisioning

### vagrant auto provisioning installing ansible roles

```
sudo ansible-galaxy install -f -r /vagrant/ansible/.roles.yml
```

### vagrant auto provisioning ansible playbook 

```
sudo ansible-playbook -i 'localhost,' -c local /vagrant/ansible/provision.yml
```

### global installed roles through ansible galaxy

- https://galaxy.ansible.com/elnebuloso/server-base/
- https://galaxy.ansible.com/elnebuloso/php70/
- https://galaxy.ansible.com/elnebuloso/ci/
- https://galaxy.ansible.com/elnebuloso/ci-vcs/
- https://galaxy.ansible.com/elnebuloso/ci-compass/
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

### php 7.0 + apache2

- http://box.entwickl.de/
- virtual document roots under /var/www/**
- each directory that has a public folder e.g. /var/www/foo/public/index.php can be called e.g. http://foo.box.entwickl.de/

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