#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install zsh
sudo apt-get install zsh curl git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install additional tools
sudo apt install ctags bat ncdu fd-find
sudo mkdir -p /opt/bin
sudo curl -o /opt/bin/prettyping https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
sudo chmod +x /opt/bin/prettyping

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install wmfocus
sudo apt install libxcb-keysyms1 libxcb-keysyms1-dev libxkbcommon0 libcairo2 libcairo2-dev
sudo mkdir -p /opt/projects/github.com/svenstaro
cd /opt/projects/github.com/svenstaro
git clone https://github.com/svenstaro/wmfocus.git
cd wmfocus
cargo run --features i3
sudo cp target/debug/wmfocus /usr/local/bin/
sudo ln -s /usr/local/bin/wmfocus /usr/local/bin/wf

/bin/bash "$DOTFILES_DIR/reload-ubuntu.sh"
