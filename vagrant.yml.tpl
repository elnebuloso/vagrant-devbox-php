---
vm_hostname: "box.entwickl.de"
vm_public_network: "192.168.178.100"
vm_private_network: "192.168.33.100"

vm_memory: 2048
vm_cpus: 2

vm_vbguest_auto_update: false
vm_vbguest_no_remote: true

vm_synced_folders:
  - {host: 'D:\\web', guest: '/var/www'}
  - {host: 'D:\\web-builds', guest: '/var/builds'}
  - {host: 'D:\\web-releases', guest: '/var/releases'}