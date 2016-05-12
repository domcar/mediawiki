# -*- mode: ruby -*-
# vi: set ft=ruby :

MGMT_DOMAIN = "example.com"
HOSTS = {
  "web" => [ "mediawiki" ],
  "database" => [ "db1", "db2" ],
}

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  
  config.vm.box = "ubuntu/trusty64"
  
  HOSTS.each do |grp_name, list|
    list.each do |host|
      config.vm.define "#{host}.#{MGMT_DOMAIN}" do |host_cfg|
        host_cfg.vm.hostname = host + "." + MGMT_DOMAIN
        if host_cfg.vm.hostname == "mediawiki.example.com" 
          host_cfg.vm.network :forwarded_port, guest: 80, host: 4568
          host_cfg.vm.network :forwarded_port, guest: 443, host: 4569
          host_cfg.vm.network "private_network", ip: "172.28.128.6"
#          host_cfg.vm.provision "ansible" do |ansible|
#            ansible.playbook = "installa_wiki.yml"
#          end
        end
        if host_cfg.vm.hostname == "db1.example.com"
          host_cfg.vm.network "private_network", ip: "172.28.128.7"
#          host_cfg.vm.provision "ansible" do |ansible|
#            ansible.playbook = "installa_db.yml"
#          end
        end
        if host_cfg.vm.hostname == "db2.example.com"
          host_cfg.vm.network "private_network", ip: "172.28.128.8"
#          host_cfg.vm.provision "ansible" do |ansible|
#            ansible.playbook = "installa_slave.yml"
#          end
        end
      end
    end
  end


end
