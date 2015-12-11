---
- hosts: all
  vars:
    timezone: 'Europe/Berlin'
    github_oauth_token: 'my_github_oauth_token'
  roles:
    - base
    - ci
    - ci-compass
    - composer
    - composer-phing-commons
    - docker
    - docker-ansible-semaphore
    - docker-grafana
    - docker-graphite-statsd
    - docker-mailcatcher
    - docker-memcached
    - docker-mongo
    - docker-mysql
    - nodejs
    - nodejs-npm-bower
    - nodejs-npm-grunt
    - php5-nginx
    - php5-apache2
    - php7-apache2
    - vcs