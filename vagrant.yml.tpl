---
vm_hostname: "box.entwickl.de"
vm_public_network: "192.168.178.100"
vm_private_network: "192.168.33.100"

vm_vbguest_auto_update: false
vm_vbguest_no_remote: true

vm_synced_folders:
  - {host: 'D:\\web', guest: '/var/www'}

############################################################################################

# https://galaxy.ansible.com/elnebuloso/server-base/
server_base_apt_upgrade: "safe"
server_base_install_linux_image_extra: "no"

# https://galaxy.ansible.com/geerlingguy/ntp/
ntp_timezone: Europe/Berlin

# https://galaxy.ansible.com/tersmitten/locales/
locales_present:
  - en_US.UTF-8
  - de_DE.UTF-8

locales_language_pack_present:
  - language-pack-en
  - language-pack-en-base
  - language-pack-de
  - language-pack-de-base

locales_default:
  lang: en_US.UTF-8

# https://galaxy.ansible.com/elnebuloso/php7/
php7_version: "7.1"

# https://galaxy.ansible.com/geerlingguy/composer/
composer_github_oauth_token: ""

# https://galaxy.ansible.com/geerlingguy/nodejs/
nodejs_version: "6.x"
nodejs_install_npm_user: "root"
nodejs_npm_global_packages: []