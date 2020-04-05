# gio's dotfiles

## Requirements

1. Install zsh
```
# Ubuntu
sudo apt-get install zsh curl git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Then logout and login
```

2. Install additional tools

```
# Ubuntu
sudo apt install ctags bat ncdu fd-find

# OSX
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
```

3. Install prettyping (optional)

```
sudo mkdir -p /opt/bin
sudo curl -o /opt/bin/prettyping https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
sudo chmod +x /opt/bin/prettyping
```

4. Install wmfocus (for i3 only)

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo apt install libxcb-keysyms1 libxcb-keysyms1-dev libxkbcommon0 libcairo2 libcairo2-dev
sudo mkdir -p /opt/projects/github.com/svenstaro
cd /opt/projects/github.com/svenstaro
git clone https://github.com/svenstaro/wmfocus.git
cd wmfocus
cargo run --features i3
sudo cp target/debug/wmfocus /usr/local/bin/
suco ln -s /usr/local/bin/wmfocus /usr/local/bin/wf
```

5. Install tldr (optional)

```
npm install -g tldr
```

## How to Apply

1. Clone and `cd` into the repository
2. `git submodule update --init --recursive`
3. `./install.sh`

Profit.

## Adding new Submodules

1. `mkdir -p <path>`
2. `git submodule add <url> <path>`

## References

- https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
- https://remysharp.com/2018/08/23/cli-improved
- - http://www.boekhoff.info/how-to-install-zsh-and-oh-my-zsh/
- https://github.com/svenstaro/wmfocus
