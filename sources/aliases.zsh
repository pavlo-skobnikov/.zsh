# Confirm Before Overwriting Something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Easier to Read Disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# Chrome CLI Shortcut
alias chrome="open -a 'Google Chrome'"

# Updates
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias brew-update="brew update && brew upgrade && brew cleanup"
alias sdk-update="sdk update && sdk upgrade"

alias update-all='zsh-update-plugins && brew-update && sdk-update && rustup update && npm update'

# Quick Path Navigation
alias cdh='cd $(find . -type d -print | fzf)'  # Search all directories from terminal's position
alias config='cd ~/.config'
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
