git "/home/vagrant/.vim_runtime" do
  repository "git://github.com/amix/vimrc.git"
  reference "master"
	user "vagrant"
  action :sync
end
