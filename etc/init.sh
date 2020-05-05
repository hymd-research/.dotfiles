#!/usr/local/bin/zsh

zsh ./requirements.sh

setopt EXTENDED_GLOB
for rcfile in "${HOME}"/.dotfiles/.git(.N); do
  ln -s "$rcfile" "${HOME}/${rcfile:t}"
done
