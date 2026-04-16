# Editor
set -gx EDITOR "nvim"
set -gx GIT_EDITOR "nvim"
set -gx VISUAL "code --wait"

# XDG Base Directory
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"

# Zsh
# NOTE: Fish doesn't use Zsh variables. Keep them for other apps.
set -gx ZDOTDIR "$XDG_CONFIG_HOME/zsh"
set -gx ZSH_CACHE_DIR "$XDG_CACHE_HOME/zsh"

# Ripgrep
set -gx --unpath RIPGREP_CONFIG_PATH "$XDG_CONFIG_HOME/ripgrep/config"

# Eza
set -gx EZA_CONFIG_DIR "$XDG_CONFIG_HOME/eza"

# Fzf
set -gx FZF_DEFAULT_OPTS_FILE "$XDG_CONFIG_HOME/fzf/config"

# Starship
set -gx STARSHIP_CONFIG_HOME "$XDG_CONFIG_HOME/starship"
set -gx STARSHIP_CONFIG "$STARSHIP_CONFIG_HOME/starship.toml"
set -gx STARSHIP_TRANSIENT_CONFIG "$STARSHIP_CONFIG_HOME/starship-transient.toml"

# Bitwarden
set -gx SSH_AUTH_SOCK "$HOME/.bitwarden-ssh-agent.sock"
