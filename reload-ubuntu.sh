#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv "$DOTFILES_DIR/rc/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/rc/.profile" ~
ln -sfv "$DOTFILES_DIR/rc/.Xresources" ~
ln -sfv "$DOTFILES_DIR/rc/.zshrc" ~
ln -sfv "$DOTFILES_DIR/rc/.tmux.conf" ~

mkdir -p ~/.config/i3
ln -sfv "$DOTFILES_DIR/rc/.config/i3/config" ~/.config/i3

mkdir -p ~/.config/i3blocks
ln -sfv "$DOTFILES_DIR/rc/.config/i3blocks/config" ~/.config/i3blocks

mkdir -p ~/.config/polybar
ln -sfv "$DOTFILES_DIR/rc/.config/polybar/config.ini" ~/.config/polybar
ln -sfv "$DOTFILES_DIR/rc/.config/polybar/launch.sh" ~/.config/polybar

mkdir -p ~/.config/rofi
ln -sfv "$DOTFILES_DIR/rc/.config/rofi/config" ~/.config/rofi

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/vim/.vim" ~
mkdir -p ~/.vim/swapfiles

sudo usermod -aG video ${USER}
