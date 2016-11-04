---
devbox_base_apt_upgrade: "yes"

# enabling roles
enable_php70: true
enable_composer: true
enable_ci: true
enable_ci_vcs: true
enable_ci_compass: true
enable_ci_jenkins: true
enable_ci_phing_commons: true
enable_docker: true
enable_docker_mysql: true
enable_docker_memcached: true
enable_docker_swagger_editor: true
enable_docker_swagger_generator: true

# elnebuloso.ci-phing-commons (latest)
ci_phing_commons_version: ""

# geerlingguy.composer
composer_github_oauth_token: ""