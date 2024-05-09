# Load Homebrew completions into the shell.
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit

  # Run `compini` only once per day.
  for dump in ~/.zcompdump(N.mh+24); do
    compinit
  done

  compinit -C
fi
