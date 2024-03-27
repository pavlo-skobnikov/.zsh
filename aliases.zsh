#!/bin/sh

# Configurations
alias config='cd ~/.config/ && nvim ~/.config/'

# Fuzzy Searching
alias cda='cd $(find ~/ -type d -print | fzf)' # Search all directories for user
alias cdh='cd $(find . -type d -print | fzf)'  # Search all directories from terminal's position

# Colorize GREP Output (Good For Log Files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm Before Overwriting Something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Easier to Read Disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# Chrome CLI Shortcut
alias chrome="open -a 'Google Chrome'"

# NeoVim
alias vim='nvim' # Use NeoVim as default editor

# Updates
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias brew-update="brew update && brew upgrade && brew cleanup"
alias sdk-update="sdk update && sdk upgrade"

alias update-all='zsh-update-plugins && brew-update && sdk-update && rustup update && npm update'

# Quick Path Navigation
alias config='cd ~/.config'
alias dev='cd ~/dev'
alias projects='cd ~/dev/projects'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'

# Tmux Open/New Session Utility Function
tsesh() {
    if [[ "$1" == "" ]]; then
        tmux neww $PUBLIC_SCRIPTS/tmux-open-or-create-session.sh $(pwd)
    else
        cd "$1"
        tmux neww $PUBLIC_SCRIPTS/tmux-open-or-create-session.sh "$1"
    fi
}
