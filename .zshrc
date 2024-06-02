#!/bin/sh

# `zsh/zprof` is a module that provides a way to profile zsh startup time.
# zmodload zsh/zprof

# Load Homebrew completions into the shell.
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit

  # Run `compinit` only once per day.
  for dump in ~/.zcompdump(N.mh+24); do
    compinit
  done

  compinit -C
fi

# Source zsh configuration files
while IFS= read -r -d '' file; do
  source "$file"
done < <(find "$HOME/.config/zsh/sources" -type f -name "*.zsh" -print0)

# Uncommenting the line below is a must when profiling.
# zprof
