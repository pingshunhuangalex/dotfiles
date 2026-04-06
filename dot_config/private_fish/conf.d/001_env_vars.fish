### Global Environment Variables ###

# Bitwarden
set -gx SSH_AUTH_SOCK "$HOME/.bitwarden-ssh-agent.sock"

### NOTE: Backup ONLY, not to be loaded by terminal
### Universal Environment Variables ###

# # Homebrew
# fish_add_path "/opt/homebrew/bin/"

# # XDG Base Directory
# set -Ux XDG_CACHE_HOME "$HOME/.cache"
# set -Ux XDG_CONFIG_HOME "$HOME/.config"
# set -Ux XDG_DATA_HOME "$HOME/.local/share"

# # Starship
# set -Ux STARSHIP_CONFIG_HOME "$XDG_CONFIG_HOME/starship"
# set -Ux STARSHIP_CONFIG "$STARSHIP_CONFIG_HOME/starship.toml"
# set -Ux STARSHIP_TRANSIENT_CONFIG "$STARSHIP_CONFIG_HOME/starship-transient.toml"

# # Ripgrep
# set -Ux --unpath RIPGREP_CONFIG_PATH "$XDG_CONFIG_HOME/ripgrep/config"

# # Fuzzy Finder
# set -Ux FZF_DEFAULT_OPTS_FILE "$XDG_CONFIG_HOME/fzf/config"

# # Zsh
# # NOTE: Fish doesn't use Zsh variables. Keep them for other apps.
# set -Ux ZDOTDIR "$XDG_CONFIG_HOME/zsh"
# set -Ux ZSH_CACHE_DIR "$XDG_CACHE_HOME/zsh"

# # Fish
# set -U fish_greeting # Remove Fish greeting
# set -U fish_key_bindings fish_vi_key_bindings # Use Vi key bindings in Fish

# # Fish Theme
# set -U fish_color_autosuggestion 969896
# set -U fish_color_cancel --reverse
# set -U fish_color_command c792ea
# set -U fish_color_comment 4f6875
# set -U fish_color_cwd c3e88d
# set -U fish_color_cwd_root f07178
# set -U fish_color_end 89ddf3
# set -U fish_color_error ff5370
# set -U fish_color_escape 56b6c2
# set -U fish_color_history_current --bold
# set -U fish_color_host eeffff
# set -U fish_color_host_remote ffcb6b
# set -U fish_color_keyword c792ea
# set -U fish_color_normal eeffff
# set -U fish_color_operator ffcb6b
# set -U fish_color_option ffcb6b
# set -U fish_color_param 82aaff
# set -U fish_color_quote c3e88d
# set -U fish_color_redirection f78c6a
# set -U fish_color_search_match c792ea --background=383c43
# set -U fish_color_selection c792ea --background=black
# set -U fish_color_status ff5370
# set -U fish_color_user c3e88d
# set -U fish_color_valid_path c3e88d --underline=single
# set -U fish_pager_color_background
# set -U fish_pager_color_completion 969896
# set -U fish_pager_color_description 4f6875
# set -U fish_pager_color_prefix eeffff --bold --underline=single
# set -U fish_pager_color_progress c792ea --bold
# set -U fish_pager_color_secondary_background
# set -U fish_pager_color_secondary_completion
# set -U fish_pager_color_secondary_description
# set -U fish_pager_color_secondary_prefix
# set -U fish_pager_color_selected_background --background=383c43
# set -U fish_pager_color_selected_completion
# set -U fish_pager_color_selected_description
# set -U fish_pager_color_selected_prefix
