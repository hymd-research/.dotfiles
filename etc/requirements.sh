#!/usr/local/bin/zsh

if [! -e "${HOME}"/.cache/.dein]; then
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ./installer.sh
    sh ./installer.sh "${HOME}/.cache/dein"
    rm ./installer.sh
fi

if [! -e "${HOME}"/.zprezto]; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zprezto"
fi

