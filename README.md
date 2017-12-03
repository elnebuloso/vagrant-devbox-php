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
- provisioning creates automatically .ssh/root credentials
- provisioning creates automatically .ssh/vagrant credentials
- public keys under .ssh/authorized_keys will be copied into authorized_keys of root user
- public keys under .ssh/authorized_keys will be copied into authorized_keys of vagrant user

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