# changelog

## 1.5.0

* apache2 site for builds matched on vagrant_synced_folders /var/builds
* apache2 site for releases matched on vagrant_synced_folders /var/releases

## 1.4.0

* update composer-phing-commons to 8.11.0

## 1.3.0

* update composer-phing-commons to 8.10.0

## 1.2.0

* removed public_network settings from Vagrantfile
* update dependencies of composer-phing-commons

## 1.1.0

* added sendmail to essential installation
* removed default config.vm.provider v.memory
* removed default config.vm.provider v.cpus
* renamed essentials to base
* renamed apache2-php to php5-apache2
* using ansible dependencies to structure provisioning