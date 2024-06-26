#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install zsh
sudo apt install zsh curl git -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install hstr
sudo add-apt-repository ppa:ultradvorka/ppa && sudo apt-get update && sudo apt-get install hstr

# Install additional tools
sudo apt install universal-ctags bat ncdu fd-find silversearcher-ag -y
sudo mkdir -p /opt/bin
sudo curl -o /opt/bin/prettyping https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
sudo chmod +x /opt/bin/prettyping

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. ~/.profile

# Install fonts
wget -O ~/YosemiteSanFranciscoFont.zip https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
unzip ~/YosemiteSanFranciscoFont.zip -d ~/
mkdir -p ~/.fonts
cp ~/YosemiteSanFranciscoFont-master/*.ttf ~/.fonts/

# Install wmfocus
sudo apt install libxcb-keysyms1 libxcb-keysyms1-dev libxkbcommon0 libxkbcommon-dev libcairo2 libcairo2-dev -y
sudo mkdir -p /opt/src/github.com/svenstaro
sudo chown -R $USER:$USER /opt/src
cd /opt/src/github.com/svenstaro
git clone https://github.com/svenstaro/wmfocus.git
cd wmfocus
cargo run --features i3
sudo cp target/debug/wmfocus /usr/local/bin/
sudo ln -s /usr/local/bin/wmfocus /usr/local/bin/wf

# Install polybar
sudo apt install polybar -y
sudo apt install brightnessctl feh x11-xserver-utils xbacklight -y

# Install compton
sudo apt install compton picom -y

# Install rofi
sudo apt install rofi -y

/bin/bash "$DOTFILES_DIR/reload-ubuntu.sh"
