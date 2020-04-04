# gio's dotfiles

## Requirements

1. Install ctags

```
# OSX
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
```

2. Install bat

```
# OSX
brew install bat

# Linux
# Download from https://github.com/sharkdp/bat/releases
sudo dpkg -i bat_<version>_<arch>.deb
```

3. Install prettyping

```
sudo mkdir -p /opt/bin
sudo curl -o /opt/bin/prettyping https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
sudo chmod +x /opt/bin/prettyping
```

4. Install fd

```
# OSX
brew install fd

# Linux
# Download from https://github.com/sharkdp/fd/releases
sudo dpkg -i fd_<version>_<arch>.deb
```

5. Install ncdu

```
# OSX
brew install ncdu

# Linux
sudo apt-get install ncdu
```

6. Install tldr

```
npm install -g tldr
```

7. Install wmfocus (for i3)

See [this page](https://github.com/svenstaro/wmfocus) for more details.

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
