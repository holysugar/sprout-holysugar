dmg_package "GoogleJapaneseInput" do
  name "GoogleJapaneseInput"
  source "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg"
  #checksum dmg_properties['checksum']
  volumes_dir "GoogleJapaneseInput"
  action :install
  owner node['current_user']
  type "pkg"
  #package_id ""
end

