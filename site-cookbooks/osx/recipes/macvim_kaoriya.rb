dmg_properties = node['sprout']['macvim_kaoriya']['dmg']

dmg_package "MacVim-KaoriYa" do
  name "MacVim"
  source dmg_properties['source']
  checksum dmg_properties['checksum']
  volumes_dir "MacVim-KaoriYa"
  action :install
  owner node['current_user']
  #package_id ""
end

