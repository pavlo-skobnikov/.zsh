# Create a new tmux session with the given name or the current directory name.
create-tmux-session() {
    if [[ "$1" == "" ]]; then
        tmux neww $PUBLIC_SCRIPTS/tmux-open-or-create-session.sh $(pwd)
    else
        cd "$1"
        tmux neww $PUBLIC_SCRIPTS/tmux-open-or-create-session.sh "$1"
    fi
}
