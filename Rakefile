task :default => :install

desc "Installs vimfiles"
task :install => [:init_submodules, :create_links_at_home, :source_files]

desc "Init git submodules"
task :init_submodules do
  system("git submodule init")
  system("git submodule update")
end


desc "Creates the .vim and .vimrc links at home directory"
task :create_links_at_home do
  system("rm -rf ~/.vim ~/.vimrc ~/.gvimrc")
  system("ln -s #{Dir.pwd} ~/.vim")
  system("ln -s #{Dir.pwd}/vimrc ~/.vimrc")
  system("ln -s #{Dir.pwd}/gvimrc ~/.gvimrc")
end

desc "Load configurations by sourcing files"
task :source_files do
  system("source ~/.vimrc")  
  system("source ~/.gvimrc")  
end
