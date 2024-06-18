## fzf setup.
# Add fzf key bindings and fuzzy completion.
eval "$(fzf --zsh)"

# Enable preview files with bat.
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'"

# Some custom key bindings.
bindkey -M viins '^x' fzf-cd-widget # Ctrl-x for execute jump.

## ngrok setup.
# Add ngrok completion.
eval "$(ngrok completion)"

## SDKMan! setup.
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
