source /usr/local/share/antigen/antigen.zsh

ZSH_TMUX_AUTOSTART=true
export PATH=/usr/local/bin:$PATH

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
#unalias d

# aliases
alias g="git"

alias mg="jump"
alias ma="mark"
alias md="unmark"
alias ml="marks"

alias d="docker"
alias dc="docker-compose"
alias ds="d ps -a --format 'table {{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Status}}\t{{.Names}}'"
alias dr="docker run -it --rm"
alias dli="docker images | gtail -n +2 | sort"

alias s3="aws s3"

alias kc="kubectl"

alias code="open -a 'visual studio code'"

alias ls-coreutils="ls $(brew --prefix)/opt/coreutils/libexec/gnubin"

alias digs="dig +short"

alias tf=terraform

#alias ec2-ls='aws ec2 describe-instances --query "Reservations[*].Instances[*].{Name:Tags[?Key==\`Name\`].Value[] | [0], PublicIP:PublicIpAddress, PrivateIP:PrivateIpAddress Status:State.Name}"'

#export PATH=$PATH:/usr/local/bin

export AWS_PAGER=""

#export DOCKER_BUILDKIT=1
export IP="$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')"

#export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"
