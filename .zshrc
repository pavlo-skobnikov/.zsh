#!/bin/sh

# `zsh/zprof` is a module that provides a way to profile zsh startup time.
# zmodload zsh/zprof

# Source zsh configuration files
while IFS= read -r -d '' file; do
  source "$file"
done < <(find "$HOME/.config/zsh/sources" -type f -name "*.zsh" -print0)

# Uncommenting the line below is a must when profiling.
# zprof
