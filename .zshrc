# editor
export EDITOR=vim
export ZSH_TMUX_AUTOSTART=true

source /home/dricher/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle jump

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Bundle tmux plugin solely for autostart
antigen bundle tmux

# Load the theme.
#antigen theme agnoster
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# aliases
unalias d

alias g="git"

alias mg="jump"
alias ma="mark"
alias md="unmark"
alias ml="marks"

alias o="xdg-open"
alias d="docker"
alias dc="docker-compose"
