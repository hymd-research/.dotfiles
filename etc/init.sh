#!/usr/local/bin/zsh

"$(dirname $0)"/requirements.sh

setopt EXTENDED_GLOB
for rcfile in "${HOME}"/.dotfiles/.??*; do
  [[ "${rcfile:t}" == ".git" ]] && continue 
  #echo "${rcfile} ${HOME}/${rcfile:t}"
  ln -s "${rcfile}" "${HOME}/${rcfile:t}"
done
