#!/bin/bash
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.bash_aliases
ln -sv ~/.dotfiles/gitconfig ~/.gitconfig
ln -sv ~/.dotfiles/gitignore ~/.gitignore
ln -sv ~/.dotfiles/vimrc ~/.vimrc
ln -sv ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -sv ~/.dotfiles/bash_aliases ~/.bash_aliases

# add bashrc configs

cat ./bashrc >> ~/.bashrc
source ~/.bashrc

# install packages

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install ctags
sudo add-apt-repository universe
sudo apt install --yes powerline

## latest vim

#sudo add-apt-repository ppa:jonathonf/vim
#sudo apt update
#sudo apt install vim

## install google-chrome

#wget -q -O - [https://dl-ssl.google.com/linux/linux_signing_key.pub](https://dl-ssl.google.com/linux/linux_signing_key.pub) | sudo apt-key add -
#sudo sh -c 'echo "deb [arch=amd64] [http://dl.google.com/linux/chrome/deb/](http://dl.google.com/linux/chrome/deb/) stable main" >> /etc/apt/sources.list.d/google.list'
#sudo apt-get update
#sudo apt-get install google-chrome-stable
