#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv "$DOTFILES_DIR/rc/.bash_profile" ~/.bash_profile
ln -sfv "$DOTFILES_DIR/rc/.profile" ~/.profile
ln -sfv "$DOTFILES_DIR/rc/.tmux.conf" ~/.tmux.conf
ln -sfv "$DOTFILES_DIR/rc/.Xresources" ~/.Xresources
ln -sfv "$DOTFILES_DIR/rc/.zshrc" ~/.zshrc

mkdir -p ~/.config/i3
ln -sfv "$DOTFILES_DIR/rc/.config/i3/config" ~/.config/i3/config

mkdir -p ~/.config/polybar
ln -sfv "$DOTFILES_DIR/rc/.config/polybar/config.ini" ~/.config/polybar/config
ln -sfv "$DOTFILES_DIR/rc/.config/polybar/launch.sh" ~/.config/polybar/launch.sh

mkdir -p ~/.config/rofi
ln -sfv "$DOTFILES_DIR/rc/.config/rofi/config" ~/.config/rofi/config

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~/.vimrc
ln -sfv "$DOTFILES_DIR/vim/.vim" ~
mkdir -p ~/.vim/swapfiles

sudo usermod -aG video ${USER}
