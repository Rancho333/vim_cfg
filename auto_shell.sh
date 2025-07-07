#!/bin/bash

cp vimrc ~/.vimrc

if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi

cp -r autoload/ ~/.vim; cp -r colors/ ~/.vim; cp -r plugin ~/.vim

cp bashrc ~/.bashrc

cp tmux.conf ~/.tmux.conf


if [ ! -d ~/.local/bin ]; then
    mkdir -p ~/.local/bin
fi

cp global/* ~/.local/bin

source  ~/.bashrc
