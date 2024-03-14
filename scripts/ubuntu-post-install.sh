# this is a very very basic script for installing some packages and repos that I
# install on new installs of ubuntu. It is not pretty or optimized, but it works for me

# always update first
sudo apt update

# dev stuff
sudo apt install zsh tmux vim

# language and build
sudo apt install git cmake gcc build-essential curl python3 python3-pip python3-dev python3-venv

# maybe
sudo apt install python-is-python3

# tools
sudo apt install ripgrep

# copy over dotfiles
# FIXME
cd ~/repos/dotfiles && cp -r . ~

# customize gnome
# sudo apt install gnome-tweaks gnome-shell-extensions

# get oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# create some basic directories
# cd ~ && mkdir dev && mkdir repos && mkdir sandbox

# clone and install latest fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# clone and install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# vim +PluginInstall +qallinstall vundles from cmd
# vim +PluginInstall +qall

# For installing ycm, after running vim plugin install
# cd ~/.vim/bundle/YouCompleteMe
# ./install.py --clangd-completer


# install docker, note the dry run
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run

sudo groupadd docker
sudo usermod -aG docker $USER
