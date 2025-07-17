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
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# aliases
unalias grep

alias g="git"
alias j="jj"

alias mg="jump"
alias ma="mark"
alias md="unmark"
alias ml="marks"

alias d="docker"
alias dc="docker compose"
alias k="kubectl"
alias o="xdg-open"

alias ccd="pwd | xclip -selection clipboard"
alias dls='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias dcls='docker compose ps --format "table {{.Name}}\t{{.Image}}\t{{.Service}}\t{{.Status}}\t{{.Ports}}"'

export KUBECONFIG="$KUBECONFIG:/home/deanr/.kube/config"
export XDG_CONFIG_HOME="$HOME/.xdg-config"

# enable buildkit for Docker
export DOCKER_BUILDKIT=1
# and for Docker Compose
export COMPOSE_DOCKER_CLI_BUILD=1

source ~/.kube-aliases.zsh
