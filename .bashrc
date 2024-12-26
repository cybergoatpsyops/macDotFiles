# Load Bash-It
export BASH_IT="$HOME/.bash_it"
source "$BASH_IT/bash_it.sh"

source ~/gitstatus/gitstatus.prompt.sh


# Enable showing mode in prompt
set show-mode-in-prompt on

# Set cursor shape for different vi modes
set vi-cmd-mode-string "\1\e[2 q\2"  # Block cursor for command mode
set vi-ins-mode-string "\1\e[6 q\2"  # Bar cursor for insert mode

# Brew grep
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# Python 
alias python=python3
