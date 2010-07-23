task :default => :install

desc "Installs vimfiles"
task :install => [:create_links_at_home]

desc "Creates the .vim and .vimrc links at home directory"
task :create_links_at_home do
  system("rm -rf ~/.vim ~/.vimrc ~/.gvimrc")
  system("ln -s #{Dir.pwd} ~/.vim")
  system("ln -s #{Dir.pwd}/vimrc ~/.vimrc")
  system("ln -s #{Dir.pwd}/gvimrc ~/.gvimrc")
end
