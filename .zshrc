source /home/dricher/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle jump

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme agnoster
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# aliases
alias g="git"

alias mg="jump"
alias ma="mark"
alias md="unmark"
alias ml="marks"

alias open="xdg-open"
alias dk="docker"
