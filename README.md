# gio's dotfiles

## How to Apply

1. Clone and `cd` into the repository
2. `git submodule update --init --recursive`
3. `./install-ubuntu.sh`

For subsequent updates just pull new changes and run `./reload-ubuntu.sh`

**Profit.**

## Optional tools

* [tldr](https://github.com/tldr-pages/tldr)

```
# Install npm and run this to install tldr
npm install -g tldr
```

## Adding new Submodules

1. `mkdir -p <path>`
2. `git submodule add <url> <path>`

## References

- https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
- https://remysharp.com/2018/08/23/cli-improved
- http://www.boekhoff.info/how-to-install-zsh-and-oh-my-zsh/
- https://github.com/svenstaro/wmfocus
- https://askubuntu.com/questions/773595/how-can-i-disable-touchpad-while-typing-on-ubuntu-16-04-syndaemon-isnt-working
- https://ubuntuforums.org/showthread.php?t=2316240

