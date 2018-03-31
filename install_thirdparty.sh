#!/bin/bash
echo Checking required termux packages...

if [[ $(command -v vim) ]]; 
    then
        echo Vim is installed
    else 
        echo Vim is not installed
        pkg install vim-python
fi

if [[ $(command -v gdb) ]]; 
    then
        echo GDB is installed
    else 
        echo GDB is not installed
        pkg install gdb
fi

if [[ $(command -v clang) ]]; 
    then
        echo Clang is installed
    else 
        echo Clang is not installed
        pkg install clang
fi

if [[ $(command -v python) ]]; 
    then
        echo Python is installed
    else 
        echo Node is not installed
        pkg install python
fi


if [[ $(command -v node) ]]; 
    then
        echo Nodejs is installed
    else 
        echo Node is not installed
        pkg install nodejs
fi

if [[ $(command -v php) ]]; 
    then
        echo PHP is installed
    else 
        echo PHP is not installed
        pkg install php
fi

if [[ $(command -v lua) ]]; 
    then
        echo Lua is installed
    else 
        echo Lua is not installed
        pkg install lua liblua
fi

if [[ $(pip list --format=legacy | grep flake8) ]]; 
    then
        echo Python checker flake8 is installed
    else 
        echo Python checker flake8 is not installed
        pip install flake8
fi

if [[ $(npm list -g jshint | grep jshint) ]]; 
    then
        echo JavaScript checker jshint is installed
    else 
        echo JavaScript checker jshint is not installed
        npm install -g jshint
fi


