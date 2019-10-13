# Setting and editing of env variables.

# Vars
export EDITOR='nvim'
export SUDO_EDITOR='nvim'

# PATH
export GOPATH=$HOME/Dev/go
export PATH=$PATH:~/.cargo/bin # Rust
export PATH="$PATH:$GOPATH/bin" # Go

typeset -U PATH # Remove duplicates in $PATH
