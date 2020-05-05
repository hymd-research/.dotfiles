#!/usr/local/bin/zsh

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ./installer.sh
sh ./installer.sh "${HOME}/.cache/dein"
rm ./installer.sh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zprezto"
