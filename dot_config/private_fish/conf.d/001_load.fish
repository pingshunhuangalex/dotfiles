# Homebrew
if not set -q HOMEBREW_PREFIX; and test -x /opt/homebrew/bin/brew
    /opt/homebrew/bin/brew shellenv fish | source
end

# UV
if test -f $XDG_DATA_HOME/../bin/env.fish
    source $XDG_DATA_HOME/../bin/env.fish
end
