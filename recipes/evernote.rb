dmg_package "Evernote" do
  volumes_dir "Evernote"
  source "http://evernote.com/download/get.php?file=EvernoteMac"
  checksum "aa477ba2ee3e71dbd7967fbcd32effda01b5fa9e195ca6eb60de84421dfd8fe7"
  accept_eula true
  action :install
  owner node['current_user']
end
