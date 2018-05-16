# gio's dotfiles

## Requirements

1. Install ctags

```
# OSX

brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
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

