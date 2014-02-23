home_dir = "/home/vagrant/"

bash "install_dot_vimrc" do
	user "vagrant"
	cwd home_dir
	code "sh " + home_dir + ".vim_runtime/install_basic_vimrc.sh"
	not_if { ::File.exists?(home_dir + ".vimrc") }
end
