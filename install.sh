#!/usr/bin/env zsh
ZPREZTO="${ZDOTDIR:-$HOME}/.zprezto"

git clone --recursive https://github.com/sorin-ionescu/prezto.git "$ZPREZTO"
cd $ZPREZTO
git remote add upstream https://github.com/sorin-ionescu/prezto.git

setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo Prezto is installed. Please open up a new window or tab to start using it.
