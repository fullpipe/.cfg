## How too?

https://www.atlassian.com/git/tutorials/dotfiles

## Short

```bash
git clone --bare git@github.com:fullpipe/.cfg.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
~/.brew
~/.macos
```
