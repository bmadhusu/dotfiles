# README.md

This README is for the dotfiles project; It lives in $HOME because the dotfiles folder is a bare git repository.
And the working directory is $HOME.

# Setup
Currently, the setup process is manual. Here are the steps to set up the dotfiles on a new machine:
```zsh
git clone --bare git@github.com:YOURNAME/dotfiles.git ~/.dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
dot checkout
```

If there are dotfiles that would be overwritten by the checkout, back them up first:
```zsh
mkdir -p ~/.dotfiles-backup
dot checkout 2>&1 | grep -E "\s+\." | awk '{print $1}' | xargs -I{} mv {} ~/.dotfiles-backup/{}
dot checkout
```

# What's included
- Neovim configuration
- Tmux configuration
- Karabiner-Elements configuration
