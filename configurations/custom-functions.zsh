# Set the active Alacritty theme based on the current System Appearance setting.
# NOTE: This script runs only when a new shell is opened. So, to apply a new theme to Alacritty,
# when System Appearance is changed, you need to open a new shell.
set_alacritty_theme() {
    ln -sf $HOME/.config/alacritty/themes/themes/$1.toml $HOME/.config/alacritty/active.toml
    touch ~/.config/alacritty/alacritty.toml
}

local ALACRITTY_THEME=$(defaults read -g AppleInterfaceStyle 2>/dev/null || echo "Light")
if [ "$ALACRITTY_THEME" = "Dark" ]; then
    set_alacritty_theme "catppuccin_frappe"
else
    set_alacritty_theme "catppuccin_latte"
fi
