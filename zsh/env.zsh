# Setting and editing of env variables.

# Vars
export EDITOR='nvim'
export SUDO_EDITOR='nvim'

# PATH
export PATH=$PATH:~/.dotfiles/bin
export PATH=$PATH:~/.cargo/bin # Rust
export PATH="$PATH:$GOPATH/bin" # Go
export GOPATH=$HOME/Dev/go # Go TODO: This shouldn't be hardcoded

. ~/.nix-profile/etc/profile.d/nix.sh # Nix working

typeset -U PATH # Remove duplicates in $PATH
