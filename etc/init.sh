#!/usr/local/bin/zsh

"$(dirname $0)"/requirements.sh

setopt EXTENDED_GLOB
for rcfile in "${HOME}"/.dotfiles/.??*; do
  if  [[ "$rcfile" == ".git" ]] && continue 
  ln -s "$rcfile" "${HOME}/${rcfile:t}"
done
