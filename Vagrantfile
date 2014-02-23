Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.forward_port 3000, 3000
  config.vm.forward_port 8888, 8888

	config.vm.synced_folder "shared", "/shared"

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "nodejs"
    chef.add_recipe "mongodb-debs"
    chef.add_recipe "vim"
    chef.add_recipe "git"
		chef.add_recipe "awesome_vim"
		chef.add_recipe "awesome_vim_install"
    chef.json = {
      "nodejs" => {
        "version" => "0.10.26"
      }
    }
  end

  config.vm.provision :shell, :inline => "sudo apt-get install -y build-essential --no-install-recommends"
  config.vm.provision :shell, :inline => "sudo apt-get install -y redis-server --no-install-recommends"
  config.vm.provision :shell, :inline => "sudo apt-get install -y ruby1.9.1-dev --no-install-recommends"
  config.vm.provision :shell, :inline => "sudo apt-get install -y ruby1.9.3 --no-install-recommends"
  config.vm.provision :shell, :inline => "sudo gem install cf"
end
