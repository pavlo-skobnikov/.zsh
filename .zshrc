#!/bin/sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# `zsh/zprof` is a module that provides a way to profile zsh startup time.
# zmodload zsh/zprof

# Load Homebrew completions into the shell.
if type brew &>/dev/null; then
	# Add Homebrew-installed tool completions.
	fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
	# Add community completions.
	fpath=($ZSH_CONFIG_HOME/dependencies/zsh-completions/src $fpath)

  # Once a day, update Homebrew's completions.
  autoload -Uz compinit 
  if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
  else
    compinit -C;
  fi;
fi

# Source zsh configuration files.
while IFS= read -r -d '' file; do
	source "$file"
done < <(find "$HOME/.config/zsh/configurations" -type f -name "*.zsh" -print0)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Uncommenting the line below is a must when profiling.
# zprof
