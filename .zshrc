# editor
export EDITOR=vim
export ZSH_TMUX_AUTOSTART=true

source /home/deanr/.antigen/antigen.zsh

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
#unalias d

alias g="git"

alias mg="jump"
alias ma="mark"
alias md="unmark"
alias ml="marks"

alias o="xdg-open"
alias d="docker"
alias dc="docker-compose"
alias k="kubectl"
alias kk="kubectl krew"

export PATH="$PATH:${KREW_ROOT:-$HOME/.krew}/bin"
export KUBECONFIG="$KUBECONFIG:/home/deanr/.kube/config"

export AWS_PG_ACCOUNT_ID=724201195915
export AWS_STG_ACCOUNT_ID=998259592149
export AWS_PRD_ACCOUNT_ID=899289360083
export AWS_SPRD_ACCOUNT_ID=871716277715
