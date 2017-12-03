# vagrant-devbox-php

full stack php development box

## features

- ubuntu 16.04 LTS
- ansible >= 2.4.0
- php 7.1 + apache2
- php composer
- optipng, 
- jpegoptim, 
- yui-compressor
- closure-compiler
- compass
- nodejs
- docker
- docker mysql
- docker memcached
- docker portainer
- docker swagger-editor
- docker swagger-generator
- docker phing-commons

## requirements

- VirtualBox >= 5.1.0
- vagrant >= 1.9.1
- vagrant plugin install vagrant-vbguest

## setup

- copy vagrant.yml.tpl as vagrant.yml to configure provisioning

## provisioning

- the box will be automatically provisioned through vagrant

```
sudo box
sudo box --roles
sudo box --roles --force
```

## connecting the box over ssh

- your-hostname-from-vagrant-yml:22
- provisioning will create automatically dot/ssh/vagrant folder with private and public keys
  - id_rsa
  - id_rsa.pub
  - id_rsa.ppk for putty pageant
- if there is an existing folder dot/ssh/vagrant folder with private and public keys, then provisioning skips the creation
- you can put your created private and public keys in dot/ssh/vagrant, so they will be used

## features (default settings and default role configurations)

### php 7.1 + apache2

- http://box.entwickl.de/
- virtual document roots under /var/www/**
- each directory that has a public folder e.g. /var/www/foo/public/index.php can be called e.g. http://foo.box.entwickl.de/

### docker

#### docker portainer

- http://box.entwickl.de:9000
- https://hub.docker.com/r/portainer/portainer/

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

#### docker phing-commons

- https://hub.docker.com/r/elnebuloso/phing-commons/