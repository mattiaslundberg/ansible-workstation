# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define("arch") do |arch|
    arch.vm.box = "terrywang/archlinux"

    arch.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
      vb.linked_clone = true
    end

    arch.vm.provision "ansible" do |ansible|
      ansible.playbook = "install.yml"
    end
  end

  config.vm.define("ubuntu") do |ubuntu|
    ubuntu.vm.box = "ubuntu/bionic64"

    ubuntu.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.cpus = 2
      vb.linked_clone = true
    end

    config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"

    config.vm.provision "shell", inline: <<-SHELL
      apt-get update && apt-get upgrade
      apt-get install -y ansible
    SHELL

    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "install.yml"
    end
  end

  config.vm.define("macos") do |mac|
    mac.vm.box = "jhcook/macos-sierra"

    mac.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
      vb.linked_clone = true
    end

    mac.vm.provision "shell" do |s|
      s.inline =  'xcode-select --install || true'
      s.privileged = false
    end

    mac.vm.provision "shell" do |s|
      s.inline =  '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
      s.privileged = false
    end

    mac.vm.provision "shell" do |s|
      s.inline = "brew install ansible python"
      s.privileged = false
    end

    mac.vm.provision "ansible" do |ansible|
      ansible.playbook = "install.yml"
    end
  end
end
