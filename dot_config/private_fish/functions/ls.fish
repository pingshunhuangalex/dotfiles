function ls --wraps='eza --classify --group-directories-first --icons --no-quotes' --description 'List contents of directory via Eza'
    eza \
        --classify \
        --group-directories-first \
        --icons \
        --no-quotes $argv
end
