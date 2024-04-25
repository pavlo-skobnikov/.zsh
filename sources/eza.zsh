# Exit if the 'eza' command could not be found
if ! (( $+commands[eza] )); then
    echo "ERROR: 'eza' command not found"
    return
fi

# Create alias override commands using 'eza'
alias ls='eza --group-directories-first --icons -a'
alias li='eza --group-directories-first --icons -lh --git -a'
alias lst='eza --group-directories-first --icons --tree --level=2 -a'
alias lit='eza --group-directories-first --icons -lh --tree --level=2 -a'
