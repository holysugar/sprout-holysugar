
urls = {
  ".gitconfig" => "https://raw.github.com/holysugar/dotfiles/master/.gitconfig",
  ".gitignore" => "https://raw.github.com/holysugar/dotfiles/master/.gitignore",
  ".screenrc"  => "https://raw.github.com/holysugar/dotfiles/master/.screenrc",
  ".zshrc"     => "https://raw.github.com/holysugar/dotfiles/master/.zshrc",
  ".vimrc"     => "https://raw.github.com/holysugar/dotfiles/master/.vimrc",
  ".ackrc"     => "https://raw.github.com/holysugar/dotfiles/master/.ackrc",
}

urls.each do |dotfile, url|
  remote_file "#{ENV['HOME']}/#{dotfile}" do
    source url
    action :create_if_missing
    owner node['current_user']
    mode  0644
  end
end

