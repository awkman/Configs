apt-get update
apt-get -y install git zsh tmux vim

#### Install oh-my-zsh ####
sudo curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
sed  -i "s/ZSH_THEME=\".*\"/ZSH_THEME=\"candy\"/g" ~/.zshrc
chsh -s /bin/zsh

#### Install vim settings ####
git clone git://github.com/awkman/VIMPS.git ~/.vim
cd ~/.vim
git submodule init; git submodule update
ln -s ~/.vim/vimrc ~/.vimrc


#### Install other settings ####
git clone https://github.com/awkman/Configs.git ~/Configs
ln -s ~/Configs/.tmux.conf ~/.tmux.conf
ln -s ~/Configs/.gitconfig ~/.gitconfig

