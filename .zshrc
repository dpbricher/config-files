source /usr/local/share/antigen/antigen.zsh

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

alias ec2-ls='aws ec2 describe-instances --query "Reservations[*].Instances[*].{Name:Tags[?Key==\`Name\`].Value[] | [0], PublicIP:PublicIpAddress, PrivateIP:PrivateIpAddress Status:State.Name}"'

export PATH=$PATH:/usr/local/bin

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
