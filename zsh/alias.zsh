# General
alias te='tree'
alias op='open'
alias env='env | fzf'
alias dnd='do-not-disturb toggle'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> public key copied to pasteboard'"
alias sf='screenfetch -E'
alias _='sudo'
alias le='less -r'
alias eo='echo'
alias yt='yotube-dl'

alias e='nvim'
alias s='subl'
alias ss='subl .'
alias alf='alfred'
alias lg='ls | grep'
alias so='source'
alias top="vtop"
alias how='howdoi'
alias ua='unalias'
alias sudo='sudo '
alias jj='killall tmux'
alias rec='asciinema rec'
alias dus='du -s'
alias to='touch'
alias t='bat'
alias zo='open'
alias ff='open .'
alias ki='kill'
alias tt='tldr'
alias tre='tree -a'
alias q='exit'
alias screen='screenfetch'
alias ad='open .'
alias mx='chmod +x'
alias rr='rm -rf'
alias a='exa'
alias aa='exa -la' # See hidden files
alias wg='wget -r --no-parent'
alias v='mv'
alias os='osascript'
alias lt='ls -lart'

# Piping
alias h2='head -n 2'
alias h10='head -n 10'
alias t10='tail -n 10'

alias cwd='pwd | pbcopy'

# Source things
alias sz='exec zsh'

# Hugo
alias us='hugo server -D'
alias ut='hugo server -w' # testing
alias u='hugo'

# Utility
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias ls="exa"

# easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cpu='top -o cpu'   # CPU
alias mem='top -o rsize' # Memory

# macOS
alias bb='pbcopy'

# Text editors
alias we='code'
alias ww='code .'

# Vim
alias vim='nvim'

# cd places
alias dw='cd ~/Dev/'
alias dsh='cd ~/.ssh'
alias dz='cd ~/.dotfiles'
alias de='cd ~/Desktop'
alias dq='cd ~/Downloads'

# Git
alias gj='open `git config remote.origin.url`'
alias ger='git checkout -' # Checkout last branch you were on
alias grl='git reset --hard && git clean -df' # Reset to exact state as last commit
alias grhf='git checkout HEAD --' # Git reset single file
alias glo='git log --pretty=oneline --abbrev-commit --graph --decorate'
alias gpm="git push origin master"
alias gfk='git fetch && git reset --hard && git clean -dfx' # Reset repo to clean remote state
alias gsp='git pull --rebase --autostash' # Git stash, pull and apply stash
alias gu='git issues'
alias gdp='git reset --hard HEAD~; git push --force-with-lease' # Delete previous commit locally and remote
alias gpd="git push origin develop"
alias ggh='push -u origin HEAD'
alias gre='git rebase -i HEAD~4'
alias gsh='git stash'
alias gb='git checkout -b'
alias grh='git reset --hard HEAD'
alias gr='git reset --hard'
alias grc='git rm --cached'
alias ggn='git_add_origin_and_origin_push'
alias g:='git push -u origin master'
alias gn='git open'
alias ggf='git push -f'
alias g::='git_remote_add_origin_from_active_link'
alias gi='git init'
alias gl='git pull'
alias gcl='git clone'
alias g.='git add .'
alias ga='git add'
alias gbd='git branch -d'
alias gg='git push'
alias glp='git pull && git push'
alias grao='git remote add origin'

# Undo your last commit, but don't throw away your changes
alias greset='git reset --soft HEAD^'

# Git Diff
alias gd='git diff'
alias gds='git diff --staged'
alias gdn='git diff --name-only'

# Git Status
alias gs='git status --short'
alias gss='git show --word-diff=color' # See changes made

