
directory "#{ENV['HOME']}/.vim" do
  owner node['current_user']
  mode  0755
end

git "#{ENV['HOME']}/.vim/neobundle.vim.git" do
  repository "https://github.com/Shougo/neobundle.vim"
  notifies :run, "execute[neobundleinstall]"
end

# works fine ???
#execute "neobundleinstall" do
#  command "/usr/bin/vim -c NeoBundleInstall -c qall!"
#  action :nothing
#  user node['current_user']
#  cwd ENV['HOME']
#end

