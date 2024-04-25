# Set up PATHs
export PATH="$HOME/.local/bin":$PATH                                # User-installed binaries
export PATH=$HOME/.cargo/bin:$PATH                                  # Rust-installed binaries
export PATH="$HOME/go/bin":$PATH                                    # Go-installed binaries
export PATH="$HOME/.local/share/neovim/bin":$PATH                   # Neovim
export PATH="$HOME/.local/share/nvim/mason/bin":$PATH               # Mason's path for installing LSPs
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS/":$PATH # IntelliJ IDEA
export SDKMAN_DIR="$HOME/.sdkman"                                   # SDKMAN!
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Additional exports
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export EDITOR='nvim'
export PAGER='less'

# Import the scripts
export PUBLIC_SCRIPTS="$HOME/.config/scripts"
export SECRET_SCRIPTS="$HOME/.config/scripts/.hidden"

# Import the secrets
source "$HOME/.config/.secrets/secret_exports.zsh"
