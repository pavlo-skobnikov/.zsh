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
alias brew-update="brew update && brew upgrade && brew cleanup"
alias sdk-update="sdk update && sdk upgrade"

alias update-all='brew-update && sdk-update && rustup update && npm update'

# Quick Path Navigation
alias cdh='cd $(find . -type d -print | fzf)' # Search all directories from terminal's position
alias config='cd ~/.config'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
