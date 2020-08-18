#!/bin/bash
echo "🍷Nick.Vim install ..."

#--------------------安装工具介绍-----------------------#
#      gcc-----------------------gcc编译工具
#      g++-----------------------g++编译工具
#      vim-----------------------代码编辑工具
#      ctags---------------------代码阅读工具 
#      xclip---------------------代码剪切工具
#      astyle--------------------代码格式化工具
#      python-setuptools---------python包管理工具
#      python-dev----------------python开发包
#      python-devel--------------python开发包
#      git-----------------------代码托管工具
#-----------------------------------------------------#

# Ubuntu系统
if which apt-get >/dev/null; then
	sudo apt-get install -y g++ vim exuberant-ctags xclip astyle python-setuptools python-dev-is-python2 git
# Centos系统
elif which yum >/dev/null; then
	sudo yum install -y gcc gcc-c++ vim ctags xclip astyle python-setuptools python-devel git
fi

# Add HomeBrew support on Mac OS
if which brew >/dev/null; then
    echo "🍺HomeBrew is already installed"
    brew install vim ctags astyle git
fi

# 使用easy_install包管理工具 -Z不安装压缩包 -U升级 安装autopep8(python排版工具)
sudo easy_install -ZU autopep8 

# 将ctags软链接到root目录
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

# 如果已经有vim配置将重置为vim_old
mv -f ~/vim ~/vim_old

# 转到家目录下，并克隆Vim配置库
cd ~/ && git clone https://github.com/NickDeCodes/N016.Vim_Configure.git

# 如果已经有.vim配置将重置为.vim_old
mv -f ~/.vim ~/.vim_old

# 将新的vim配置置为隐藏文件夹
mv -f ~/N016.Vim_Configure ~/.vim

# 如果已经有.vimrc配置将重置为.vimrc_old
mv -f ~/.vimrc ~/.vimrc_old

# 将新的vimrc配置移除至家目录
mv -f ~/.vim/.vimrc ~/

# 克隆vundle(vim插件管理)并重新命名
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# 开始安装
echo "🍷Nick.Vim install bundle" > Nick.Vim
echo "🍷Nick.Vim exit automatically after completion" >> Nick.Vim
vim Nick.Vim -c "BundleInstall" -c "q" -c "q"
rm Nick.Vim

# 安装完成
echo "🍷Nick.Vim is already installed"
