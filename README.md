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

**Touchpad Issues**

- https://askubuntu.com/questions/773595/how-can-i-disable-touchpad-while-typing-on-ubuntu-16-04-syndaemon-isnt-working
- https://ubuntuforums.org/showthread.php?t=2316240
- https://forum.manjaro.org/t/i3wm-how-to-disable-the-touchpad-by-default/30445/7
- https://www.x.org/archive/X11R7.5/doc/man/man4/synaptics.4.html
- https://askubuntu.com/questions/964242/synaptics-palm-dimensions-numbers
- https://askubuntu.com/questions/205512/touchpad-palm-sensitivity
- https://superuser.com/questions/277427/making-synaptics-palm-detection-work-under-ubuntu-11-04
- https://askubuntu.com/questions/113602/add-dead-region-touchpad
- https://askubuntu.com/questions/681642/two-finger-scrolling-causing-a-right-click-ubuntu-15-04

