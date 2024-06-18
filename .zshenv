# Add zsh-specific configuration.
export ZDOTDIR=$HOME/.config/zsh

# Add PATHs.
export PATH="$HOME/.local/bin":$PATH                                            # User-installed binaries
export PATH=$HOME/.cargo/bin:$PATH                                              # Rust-installed binaries
export PATH="$HOME/go/bin":$PATH                                                # Go-installed binaries
export PATH="$HOME/.local/share/neovim/bin":$PATH                               # Neovim
export PATH="$HOME/.local/share/nvim/mason/bin":$PATH                           # Mason's path for installing LSPs
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS/":$PATH             # IntelliJ IDEA
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"                  # Add GNU coreutils to the PATH
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"                    # Add GNU sed to the PATH
export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"              # Coursier.
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts" # JetBrains Toolbox.

# Add CLI configuration.
export EDITOR='nvim'
export PAGER='less'
export MANPAGER='less'
export MANWIDTH=999

# Import personal scripts.
export PUBLIC_SCRIPTS="$HOME/.config/scripts"
export SECRET_SCRIPTS="$HOME/.config/scripts/.hidden"

# Source the secret exports.
# TODO: Use ansible-vault to encrypt the secrets and store them in plain text.
source "$HOME/.config/.secrets/secret_exports.zsh"

# Custom variables for convenience.
export CONFIG_HOME="$HOME/.config"
export ZSH_CONFIG_HOME="$CONFIG_HOME/zsh"

# Set bat theme.
export BAT_THEME="base16"

# SDKMan!
export SDKMAN_DIR="$HOME/.sdkman"

# Set up Java and Maven PATHs via SDKMAN
export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export M2_HOME=$HOME/.sdkman/candidates/maven/current
