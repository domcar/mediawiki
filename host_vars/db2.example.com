---
ha_priority: 100
mediawikiIP: "{{ hostvars['mediawiki.example.com']['ansible_eth1']['ipv4']['address'] }}"

