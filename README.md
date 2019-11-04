# dotfiles

## From scratch

```bash
git init --bare $HOME/.cfg
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # Also add this to .bashrc
config config --local status.showUntrackedFiles no
```

## Use on a new system

```bash
git clone --bare <this-repo> $HOME/.cfg
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # Also add this to .bashrc
config config --local status.showUntrackedFiles no
config checkout
```

## Link

https://www.atlassian.com/git/tutorials/dotfiles
