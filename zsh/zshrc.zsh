source ~/.zsh_plugins.sh # Load zsh plugins

source ~/.dotfiles/zsh/env.zsh

source ~/.dotfiles/zsh/options.zsh
source ~/.dotfiles/zsh/functions/functions.zsh
source ~/.dotfiles/zsh/functions/fzf-functions.zsh
source ~/.dotfiles/zsh/functions/git-functions.zsh
source ~/.dotfiles/zsh/bindings.zsh
source ~/.dotfiles/zsh/alias.zsh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

