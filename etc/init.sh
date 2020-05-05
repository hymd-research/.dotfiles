#!/usr/local/bin/zsh

zsh "$(dirname $0)"/requirements.sh

setopt EXTENDED_GLOB
for rcfile in "${HOME}"/.dotfiles/.git(.N); do
  ln -s "$rcfile" "${HOME}/${rcfile:t}"
done
