# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# Fzf with bat preview.
alias fzfp="fzf --preview \"bat --color=always --style=numbers --line-range=:500 {}\""

# Enable preview files with bat.
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'"

# Some custom key bindings.
bindkey -M viins '^x' fzf-cd-widget # X for execute jump.
