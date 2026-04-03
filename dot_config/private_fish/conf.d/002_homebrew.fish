if not set -q HOMEBREW_PREFIX; and test -x /opt/homebrew/bin/brew
    /opt/homebrew/bin/brew shellenv fish | source
end
