function ll --wraps='eza --long --binary --classify --dereference --git --group-directories-first --header --icons --no-quotes --octal-permissions --smart-group --time-style=long-iso' --description 'List contents of directory via Eza using long format'
    eza \
        --long \
        --binary \
        --classify \
        --dereference \
        --git \
        --group-directories-first \
        --header \
        --icons \
        --no-quotes \
        --octal-permissions \
        --smart-group \
        --time-style=long-iso $argv
end
