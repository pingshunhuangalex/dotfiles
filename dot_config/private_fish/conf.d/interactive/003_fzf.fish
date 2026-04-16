if type -q fzf
    set -gx FZF_DEFAULT_COMMAND "fd --type f --strip-cwd-prefix --hidden --exclude .git"
    set -gx FZF_CTRL_R_OPTS "--exact --with-nth 1,3.. --bind 'alt-t:change-with-nth(2..|3..|1,3..)'"
    set -gx FZF_ALT_C_OPTS "--walker-skip .git,node_modules,target --preview 'eza --classify --color=always --dereference --group-directories-first --icons --no-quotes --tree --level 2 {} | head -200'"

    fzf --fish | source
end
