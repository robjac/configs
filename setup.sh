# /bin/bash
# make sure Xcode is installed first!
echo "Have you installed Xcode with developer tools? (y/n)"
read answer

if [ "$answer" != "y" ]; then
  echo "Go do that first ;)"
  exit 0
fi

echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Bash-it"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

echo "Syncing .bash_profile"
rm ~/.bash_profile
ln -s ~/repos/configs/bash/.bash_profile ~/.bash_profile
cp ~/repos/configs/bash/.bashrc ~/.bashrc

echo "Installing dev packages"
brew install rbenv python python3 neovim yarn git nvm
brew cask install iterm2 google-chrome

echo "Adding git config"
cp ~/repos/configs/git/.gitconfig ~/.gitconfig

echo "Setup NVM and node version to latest"
nvm install node
npm i create-react-app vue-cli tern eslint avn avn-nvm avn-n -g
avn setup

echo "Setup rbenv and ruby version to latest"
rbenv init
rbenv install -l

echo "Setting up neovim"
pip install neovim
gem install neovim
ln -s ~/repos/configs/neovim/init.vim ~/.config/nvim/init.vim
cp -rf ~/repos/configs/neovim/dein/ ~/.config/nvim/dein
cp -rf ~/repos/configs/neovim/UltiSnips/ ~/.config/neovim/UltiSnips

echo "Setting up vmail"
gem install vmail
gem install elinks lynx
ln -s ~/repos/configs/vmail/.vmailrc ~/.vmailrc/default/.vmailrc

reload

echo "The end..."
