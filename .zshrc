# `zsh/zprof` is a module that provides a way to profile zsh startup time.
# zmodload zsh/zprof

# Load Homebrew completions into the shell.
if (( $+commands[brew] )); then
    # Add Homebrew-installed tool completions.
    fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
    # Add community completions.
    fpath=(~/dotfiles/zsh/dependencies/zsh-completions/src $fpath)

    # Once a day, update Homebrew's completions.
    autoload -Uz compinit
    if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
        compinit
    else
        compinit -C
    fi
fi

# Source zsh configuration files.
for file in ~/dotfiles/zsh/configurations/**/*.zsh(N); do
    source "$file"
done

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the end of ~/.zshrc.
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# Uncommenting the line below is a must when profiling.
# zprof
