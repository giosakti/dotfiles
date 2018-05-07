#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv "$DOTFILES_DIR/rc/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/rc/.profile" ~

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/vim/.vim" ~

ln -sfv "$DOTFILES_DIR/.tmux.conf" ~

