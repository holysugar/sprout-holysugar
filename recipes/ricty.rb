execute 'install ricty' do
  user  node['current_user']

  command <<-END
/usr/local/bin/brew tap sanemat/font
/usr/local/bin/brew install ricty

cp -f /usr/local/Cellar/ricty/3.2.2/share/fonts/Ricty*.ttf ~/Library/Fonts/
/usr/local/bin/fc-cache -vf
  END

  not_if { File.exist?(File.expand_path("~/Library/Fonts/Ricty-Regular.ttf")) }
end

