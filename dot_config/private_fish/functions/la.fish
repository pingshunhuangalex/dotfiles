function la --wraps='eza --long --all --binary --classify --dereference --git --group-directories-first --header --icons --no-quotes --octal-permissions --smart-group --time-style=long-iso' --description 'List contents of directory via Eza, including hidden files in directory using long format'
    set -l tree_toggle
    set -l tree_level
    set -l args $argv

    if set -q argv[1]; and string match -qr '^[+-]?\d+$' -- $argv[1]
        if test $argv[1] -ge 1
            set tree_toggle "--tree"
            set tree_level "--level=$argv[1]"
        end

        set args $argv[2..]
    end

    eza \
        --long \
        --all \
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
        --time-style=long-iso \
        $tree_toggle \
        $tree_level $args
end
