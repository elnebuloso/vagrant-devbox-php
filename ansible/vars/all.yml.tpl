---
timezone: "Europe/Berlin"
github_oauth_token: "your_secret_github_oauth_token"

######################################################################################

ci: "yes"
ci_compass: "yes"
ci_jenkins: "yes"
ci_jenkins_mount_src: "nas.fritz.box:/jenkins"
ci_jenkins_mount_type: "nfs"
ci_jenkins_mount_backup_src: "nas.fritz.box:/jenkins-thin-backup"
ci_jenkins_mount_backup_type: "nfs"
ci_jenkins_plugins:
  - thinBackup
  - configure-job-column-plugin
  - compact-columns
  - sectioned-view
  - timestamper
  - copyartifact
  - ansible
  - git
  - clover
  - checkstyle
  - cron_column
  - greenballs
  - bulk-builder
  - build-pipeline-plugin
  - phing
  - analysis-collector
  - extensible-choice-parameter
  - ws-cleanup
  - managed-scripts
  - publish-over-ssh
  - categorized-view
  - ez-templates

######################################################################################

php5: "yes"
php5_apache2: "yes"

######################################################################################

composer: "yes"
composer_phing_commons: "yes"

######################################################################################

docker: "yes"

docker_elasticsearch: "yes"
docker_elasticsearch_state: "started"
docker_elasticsearch_version: "2.3"
docker_elasticsearch_kibana_state: "started"
docker_elasticsearch_kibana_version: "4.5"
docker_elasticsearch_kibana_web_name: "kibana.elasticsearch"
docker_elasticsearch_kibana_web_port: "49154"

docker_grafana: "yes"
docker_grafana_state: "started"
docker_grafana_version: "latest"
docker_grafana_web_port: "49151"
docker_grafana_web_name: "grafana"
docker_grafana_admin_password: "welcome"

docker_graphite_statsd: "yes"
docker_graphite_statsd_state: "started"
docker_graphite_statsd_version: "latest"
docker_graphite_statsd_web_port: "49152"
docker_graphite_statsd_web_name: "graphite"

docker_mailcatcher: "yes"
docker_mailcatcher_state: "started"
docker_mailcatcher_version: "latest"
docker_mailcatcher_web_port: "49153"
docker_mailcatcher_web_name: "mailcatcher"

docker_memcached: "yes"
docker_memcached_state: "started"
docker_memcached_version: "1.4"

docker_mongo: "yes"
docker_mongo_state: "started"
docker_mongo_version: "3.2"

docker_mysql: "yes"
docker_mysql_state: "started"
docker_mysql_version: "5.5"
docker_mysql_root_password: "welcome"

docker_neo4j: "yes"
docker_neo4j_state: "started"
docker_neo4j_version: "latest"
docker_neo4j_web_port: "49156"
docker_neo4j_web_name: "neo4j"

docker_rabbitmq: "yes"
docker_rabbitmq_state: "started"
docker_rabbitmq_version: "3.6"
docker_rabbitmq_web_port: "49155"
docker_rabbitmq_web_name: "rabbitmq"
docker_rabbitmq_user: "root"
docker_rabbitmq_pass: "welcome"
docker_rabbitmq_hostname: "my-rabbit"

docker_redis: "yes"
docker_redis_state: "started"
docker_redis_version: "3.0"

docker_swagger_editor: "yes"
docker_swagger_editor_state: "started"
docker_swagger_editor_version: "v2.9.9"
docker_swagger_editor_web_port: "49157"
docker_swagger_editor_web_name: "swagger-editor"

docker_swagger_generator: "yes"
docker_swagger_generator_state: "started"
docker_swagger_generator_version: "v2.1.6"
docker_swagger_generator_web_port: "49158"
docker_swagger_generator_web_name: "swagger-generator"

######################################################################################

nodejs: "yes"
nodejs_npm: "yes"
nodejs_npm_bower: "yes"
nodejs_npm_grunt_cli: "yes"

######################################################################################