include_recipe "sprout-osx-base::homebrew"

%w(
  w3m
  wget
  ack
  the_silver_searcher
  lv
  yajl
).each do |pkg|
  brew pkg
end
