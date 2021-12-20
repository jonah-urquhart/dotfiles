# this is a very very basic script for installing some packages and repos that I
# install on new installs of ubuntu. It is not pretty or optimized, but it works for me

# always update first
sudo apt update

# dev stuff
sudo apt install zsh tmux vim

# language and build
sudo apt install git cmake gcc build-essential curl python3 python3-pip python3-dev python3-venv

# customize gnome
sudo apt install gnome-tweaks gnome-shell-extensions

# get oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# create some basic directories
cd ~ && mkdir dev && mkdir repos && mkdir sandbox

# clone dotfiles
cd ~/repos && git clone https://github.com/jonah-urquhart/dotfiles.git

# clone and install latest fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# clone and install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy over dotfiles
cd ~/repos/dotfiles && cp -r . ~
