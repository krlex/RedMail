# -*- mode: ruby -*-

require File.dirname(__FILE__)+"/plugin_manager"
check_plugins ["vagrant-hosts", "vagrant-timezone"]

require 'yaml'
servers = YAML.load_file('OS.yml')
API_VERSION = "2"
Vagrant.configure(API_VERSION) do |config|
  servers.each do | servers |
    config.vm.define servers["name"] do |machine|
      machine.vm.box = servers["box"]
      machine.vm.network "private_network", ip: servers["box_ip"]
      machine.vm.provider :virtualbox do |vb|
      machine.vm.provision "shell", servers["provision"]
        vb.name = servers["name"]
        vb.memory = servers["memory"]
        vb.cpus = servers["cpu"]
      end
    end
  end
end
