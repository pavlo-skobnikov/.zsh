# Add zsh-specific configuration.
unsetopt BEEP
setopt AUTO_CD
setopt GLOB_DOTS
setopt NOMATCH
setopt MENU_COMPLETE
setopt EXTENDED_GLOB
setopt INTERACTIVE_COMMENTS
setopt APPEND_HISTORY

export ZDOTDIR="$HOME/dotfiles/zsh"
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=1000000
export SAVEHIST=1000000

setopt BANG_HIST              # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY       # Write the history file in the ":start:elapsed;command" format.
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS       # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
setopt HIST_IGNORE_SPACE      # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS      # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY            # Don't execute immediately upon history expansion.

# Add PATHs.
export PATH="$HOME/.local/bin":$PATH                                            # User-installed binaries.
export PATH=$HOME/.cargo/bin:$PATH                                              # Rust-installed binaries.
export PATH="$HOME/go/bin":$PATH                                                # Go-installed binaries.
export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"              # Scala Coursier.
export PATH="$HOME/.local/share/neovim/bin":$PATH                               # Neovim.
export PATH="$HOME/.local/share/nvim/mason/bin":$PATH                           # Neovim Mason's path for installing LSPs.
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"                  # Add GNU coreutils to the PATH.
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"                    # Add GNU sed to the PATH.
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS/":$PATH             # IntelliJ IDEA.
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts" # JetBrains Toolbox.
export PATH="$PATH:$HOME/public-scripts"                                        # Public scripts.
export PATH="$PATH:$HOME/private-scripts"                                       # Private scripts.

# Add CLI configuration.
export EDITOR='nvim'
export PAGER='less'
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# Set up Java and Maven PATHs via SDKMAN
export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export M2_HOME=$HOME/.sdkman/candidates/maven/current

# Set bat theme.
export BAT_THEME="base16"

# SDKMan!
export SDKMAN_DIR="$HOME/.sdkman"

# Set karabiner configuration path for goku.
export GOKU_EDN_CONFIG_FILE="$HOME/.config/karabiner/karabiner.edn"

# Source the secret exports.
# TODO: Use ansible-vault to encrypt the secrets and store them in plain text.
source "$HOME/dotfiles/.secrets/secret_exports.zsh"
