# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) 
and this project adheres to [Semantic Versioning](http://semver.org/).


## [4.3.0] - 2018-01-07
### Changed
- fixed puttykeygen


## [4.2.0] - 2017-12-10
### Changed
- vagrant config setting vm_private_ip
- vagrant config setting vm_gui


## [4.1.0] - 2017-12-04
### Changed
- elnebuloso.docker-login
- generate ssh keys only for root user


## [4.0.0] - 2017-12-03
### Changed
- ssh key generation update
- update provisioning
- update roles


## [3.13.0] - 2017-08-19
### Changed
- elnebuloso.nvm version: 1.0.0
- removed geerlingguy.nodejs


## [3.12.0] - 2017-07-31
### Changed
- updated roles
- updated provisioning
- removed phing-commons, available through docker, run:
- automatic ansible provisioning on vagrant up / vagrant reload --provision

```
docker run -v ${PWD}:/app elnebuloso/phing-commons:php71-latest phing
docker run -v ${PWD}:/app elnebuloso/phing-commons:php71-10.5.0 phing
```

## [3.11.0] - 2017-04-22
### Changed
- elnebuloso.server-base version: 2.7.0
- elnebuloso.pip version: 1.2.0
- elnebuloso.php71 version: 1.2.0
- elnebuloso.ci version: 2.1.0
- elnebuloso.ci-vcs version: 2.1.0
- elnebuloso.ci-compass version: 2.1.0
- elnebuloso.ci-phing-commons version: 2.4.0
- elnebuloso.docker version: 2.9.0
- elnebuloso.docker-portainer version: 1.3.0
- elnebuloso.docker-swagger-editor version: 2.2.0
- elnebuloso.docker-swagger-generator version: 2.2.0
- geerlingguy.ntp version: 1.4.2
- geerlingguy.composer version: 1.6.1
- geerlingguy.nodejs version: 4.1.0


## [3.10.0] - 2017-04-21
### Changed

- elnebuloso.docker 2.8.0
- updated box-play
- updated box-roles
- removed vagrant config cpu
- removed vagrant config memory


## [3.9.0] - 2017-03-28
### Changed

- elnebuloso.server-base 2.6.0
- elnebuloso.docker 2.7.0


## [3.8.0] - 2017-03-27
### Changed

- elnebuloso.docker 2.5.0
- shortcut scripts update running playbooks and roles


## [3.7.0] - 2017-01-31
### Added

- elnebuloso.docker-portainer 1.1.0

### Changed

- installing ansible over pip
- installing pip docker-py
- installing pip docker-compose
- elnebuloso.server-base 2.5.0
- elnebuloso.docker 2.4.0
- elnebuloso.pip 1.1.0


## [3.6.0] - 2017-01-26
### Added

### Changed

- updated ansible role elnebuloso.ci-phing-commons 2.2.0, tarball install


## [3.5.0] - 2017-01-24
### Added

- ansible role elnebuloso.pip

### Changed

- updated CHANGELOG.md
- updated ansible role elnebuloso.docker 2.3.0
- removed ansible role carlosbuenosvinos.ansistrano-deploy
- removed ansible role carlosbuenosvinos.ansistrano-rollback
  

## [3.4.0]
### Added

### Changed

- ansible >= 2.2.0
- shortcut box added added $@ for ansible-playbook arguments
- shortcut box-roles added argument: force|forced
- update elnebuloso.server-base@2.4.0
- update elnebuloso.docker-mysql@1.3.0
- update elnebuloso.docker-memcached@1.1.0
- update elnebuloso.docker-swagger-editor@2.1.0
- update elnebuloso.docker-swagger-generator@2.1.0
- new role geerlingguy.ntp
- new role geerlingguy.nodejs
- new role ocha.yarn
- removed enabling roles, using tags
- removed role elnebuloso.docker, replaced with angstwad.docker_ubuntu
- update php7.1


## [3.3.0]
## [3.2.0]
### Added

### Changed

- ansible roles defined by specific versions
- renamed provision playbook
- added virtualbox config for symlinks
- added shortcut box (ansible provisioning)
- added shortcut box-roles (ansible roles)


## [3.1.0]
### Added

### Changed

- added base role for apt-upgrade (configurable)
- updated ansible roles elnebuloso.* to latest
- updated ansible role geerlingguy.composer to 1.5.0
- updated ansible role carlosbuenosvinos.ansistrano-deploy 1.11.0


## [3.0.4]
### Added

### Changed

- updated ansible role carlosbuenosvinos.ansistrano-deploy to 1.9.1
- updated ansible role carlosbuenosvinos.ansistrano-rollback to 1.5.0


## [3.0.3]
### Added

### Changed

- fixed ansible role dependency of carlosbuenosvinos.ansistrano-rollback


## [3.0.2]
### Added

### Changed

- updated ansible role elnebuloso.ci-phing-commons to 2.1.0
- updated phing-commons default latest, through composer create-project


## [3.0.1]
### Added

### Changed

- updated phing-commons to 9.3.2


## [3.0.0]
### Added

### Changed

- Ubuntu 16.04 + PHP 7.0


## [2.0.0]
### Added

### Changed

- rebuilding, using ansible-galaxy for role exchange


## [1.13.1]
## [1.13.0]
### Added

### Changed

- docker swagger-editor
- docker swagger-generator


## [1.12.0]
### Added

### Changed

- rabbitmq bugfix management
- nodejs LTS
- npm latest
- npm bower fix bower ESUDO Cannot be run with sudo using default .bowerrc for root and jenkins user


## [1.11.0]
### Added

### Changed

- configuration update
- removed ansible-semaphore


## [1.9.4]
## [1.9.3]
### Added

### Changed

- different cleanup code


## [1.9.2]
### Added

### Changed

- bugfix composer for jenkins if jenkins is not existing
- bugfix composer-phing-commons for jenkins if jenkins is not existing
- commented out optional vagrant plugin vagrant-vbguest, fails if not existing


## [1.9.1]
### Added

### Changed

- removed config.vm.synced_folder type nfs from Vagrantfile, problems installing over ubuntu
- The type of synced folder. If this is not specified, Vagrant will automatically choose the best synced folder option for your environment.
- moved 


## [1.9.0]
### Added

### Changed

- removed default apache2 site /var/www/html
- removed meta folders from ansible packages
- split php5-apache2 ansible package into php5
- split php5-apache2 ansible package into php5-apache2
- removed ansible package vcs, dependencies moved to base
- updated composer installer
- updated composer-phing-commons installation
- added ansible/config folder for user defined settings
- updated all docker container installations


## [1.8.0]
### Added

### Changed

- update composer-phing-commons to 9.2.0


## [1.7.0]
### Added

### Changed

- update composer-phing-commons to 9.1.0
- update to php 5.6


## [1.6.0]
### Added

### Changed

- update composer-phing-commons to 9.0.0


## [1.5.0]
### Added

### Changed

- apache2 site for builds matched on vm_synced_folders /var/builds
- apache2 site for releases matched on vm_synced_folders /var/releases


## [1.4.0]
### Added

### Changed

- update composer-phing-commons to 8.11.0


## [1.3.0]
### Added

### Changed

- update composer-phing-commons to 8.10.0


## [1.2.0]
### Added

### Changed

- removed public_network settings from Vagrantfile
- update dependencies of composer-phing-commons


## [1.1.0]
### Added

### Changed

- added sendmail to essential installation
- removed default config.vm.provider v.memory
- removed default config.vm.provider v.cpus
- renamed essentials to base
- renamed apache2-php to php5-apache2
- using ansible dependencies to structure provisioning