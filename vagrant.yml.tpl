---
vm_hostname: "box.entwickl.de"

vm_vbguest_auto_update: false
vm_vbguest_no_remote: true

vm_synced_folders:
  - {host: 'D:\\web', guest: '/var/www'}

############################################################################################

# optional configuration values

# vm_gui: false
# vm_private_ip: "192.168.33.100"

############################################################################################

# https://galaxy.ansible.com/elnebuloso/docker-login/
docker_login_dockerhub_username: ""
docker_login_dockerhub_password: ""
docker_login_dockerhub_email: ""

# https://galaxy.ansible.com/elnebuloso/php7/
php7_version: "7.1"
php7_webserver_hostname: "box.entwickl.de"

############################################################################################

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

# https://galaxy.ansible.com/geerlingguy/composer/
composer_github_oauth_token: ""

# https://galaxy.ansible.com/geerlingguy/nodejs/
nodejs_version: "6.x"
nodejs_install_npm_user: "root"
nodejs_npm_global_packages: []

# https://galaxy.ansible.com/geerlingguy/ntp/
ntp_timezone: Europe/Berlin

# https://galaxy.ansible.com/ocha/yarn/
yarn_debian_repo_url: "https://dl.yarnpkg.com/debian/ stable main"
yarn_debian_repo_gpg_key_url: "https://dl.yarnpkg.com/debian/pubkey.gpg"
