source /home/dricher/.antigen/antigen.zsh

ZSH_TMUX_AUTOSTART=true
export PATH=$PATH:/usr/local/bin

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle jump

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# auto start tmux
antigen bundle tmux

# Load the theme.
#antigen theme agnoster
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# remove unwanted oh-my-zsh aliases
unalias d

# aliases
alias g="git"

alias mg="jump"
alias ma="mark"
alias md="unmark"
alias ml="marks"

alias d="docker"
alias dc="docker-compose"

alias open="xdg-open"
