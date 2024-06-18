# Create a new tmux session with the given name or the current directory name.
create-tmux-session() {
	if [[ "$1" == "" ]]; then
		tmux neww $PUBLIC_SCRIPTS/tmux-open-or-create-session.sh $(pwd)
	else
		cd "$1"
		tmux neww $PUBLIC_SCRIPTS/tmux-open-or-create-session.sh "$1"
	fi
}

# Update all the tools.
update-all() {
	brew update &&
		brew upgrade &&
		brew cleanup &&
		sdk update &&
		sdk upgrade &&
		cd $ZSH_CONFIG_HOME &&
		git submodule update --recursive --remote
}

# Set the active Alacritty theme based on the current System Appearance setting.
# NOTE: This script runs only when a new shell is opened. So, to apply a new theme to Alacritty,
# when System Appearance is changed, you need to open a new shell.
set_alacritty_theme() {
	ln -sf $HOME/.config/alacritty/themes/themes/$1.toml $HOME/.config/alacritty/active.toml
	touch ~/.config/alacritty/alacritty.toml
}

local ALACRITTY_THEME=$(defaults read -g AppleInterfaceStyle 2>/dev/null || echo "Light")
if [ "$ALACRITTY_THEME" = "Dark" ]; then
	set_alacritty_theme "gruvbox_dark"
else
	set_alacritty_theme "gruvbox_light"
fi
