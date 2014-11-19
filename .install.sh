#!/bin/zsh

[[ ! -d "prezto" ]] && git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

mkdir -p $HOME/.zsh.before
mkdir -p $HOME/.zsh.after
mkdir -p $HOME/.zsh.prompts

[[ ! -d "zpreztoc" ]] && git clone --recursive https://github.com/kerbyfc/zpreztoc.git "${ZDOTDIR:-$HOME}/.zprezto/zpreztoc"

ln -nfs "$HOME/.zprezto/zpreztoc/zpreztorc" "${ZDOTDIR:-$HOME}/.zpreztorc"
