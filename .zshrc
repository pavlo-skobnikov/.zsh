#!/bin/sh

# Source zsh configuration files
while IFS= read -r -d '' file; do
  source "$file"
done < <(find "$HOME/.config/zsh/sources" -type f -name "*.zsh" -print0)
