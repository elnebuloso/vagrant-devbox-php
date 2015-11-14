---
vagrant_synced_folders:
  - {host: 'D:\\web', guest: '/var/www'}
  - {host: 'D:\\web-builds', guest: '/var/builds'}
  - {host: 'D:\\web-releases', guest: '/var/releases'}
ansible_optional_roles:
  - docker-ansible-semaphore
  - docker-grafana
  - docker-graphite-statsd
  - docker-mailcatcher
  - docker-memcached
  - docker-mongo
  - docker-mysql
  - composer-phing-commons
  - ci-compass
  - nodejs-npm-bower
  - nodejs-npm-grunt
timezone: 'Europe/Berlin'
github_oauth_token: 'my_cool_github_oauth_token'