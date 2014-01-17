#!/bin/bash

cd ../
mv ./.vimrc ./.vimrc.bak
ln -s ./.vim/.vimrc ./.vimrc
vim +BundleInstall +qall
