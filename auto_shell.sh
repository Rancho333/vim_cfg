#!/bin/bash

cp vimrc ~/.vimrc

if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi

cp -r autoload/ ~/.vim; cp -r colors/ ~/.vim; cp -r plugin ~/.vim

cp bashrc ~/.bashrc
