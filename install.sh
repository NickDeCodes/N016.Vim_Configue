#!/bin/bash
echo "🍷Nick.Vim install ..."
##Ubuntu系统
if which apt-get >/dev/null; then
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git
##Centos系统
elif which yum >/dev/null; then
	sudo yum install -y gcc vim ctags xclip astyle python-setuptools python-devel git
fi

##Add HomeBrew support on Mac OS
if which brew >/dev/null; then
    echo "🍺HomeBrew is already installed"
    brew install vim ctags git astyle
fi

##使用easy_install包管理工具 -Z不安装压缩包 -U升级 安装autopep8(python排版工具)
sudo easy_install -ZU autopep8 
##将ctags软链接到root目录
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
##如果已经有vim配置将重置为vim_old
mv -f ~/vim ~/vim_old
##转到家目录下，并克隆Vim配置库
cd ~/ && git clone https://github.com/NickDeCodes/Vim
##如果已经有.vim配置将重置为.vim_old
mv -f ~/.vim ~/.vim_old
##将新的vim配置置为隐藏文件夹
mv -f ~/vim ~/.vim
##如果已经有.vimrc配置将重置为.vimrc_old
mv -f ~/.vimrc ~/.vimrc_old
##将新的vimrc配置移除
mv -f ~/.vim/.vimrc ~/
##克隆vundle(vim插件管理)并重新命名
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
##开始安装
echo "🍷Nick.Vim install bundle" > NickDeVim
echo "🍷Nick.Vim exit automatically after completion" >> NickDeVim
vim NickDeVim -c "BundleInstall" -c "q" -c "q"
rm NickDeVim
echo "🍷Nick.Vim is already installed"
