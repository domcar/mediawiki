# mediawiki

it creates a mediawiki with two master-master mysql DB. The IP of the mysql where mediawiki will write is dynamically managed by keepalived

USAGE: 

vagrant up


ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory site.yml
