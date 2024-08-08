# Confirm before overwriting something.
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Always colorize ripgrep output.
alias rg='rg --color=auto'

# More insightful ls.
alias ls='eza --group-directories-first --icons -lh --git -a'
alias tree='eza --group-directories-first --icons -lh --tree --level=2 -a'

# Replace cat with bat.
alias cat="bat -pp"
alias catt="bat"

# Shortcuts for common system paths.
alias config='cd ~/.config'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'

# Quicker access to Neovim.
alias vi='nvim'
alias vim='nvim'

# Fzf with bat preview.
alias fzfp="fzf --preview \"bat --color=always --style=numbers --line-range=:500 {}\""

# Lazy tools.
alias lg='lazygit'
alias ld='lazydocker'
