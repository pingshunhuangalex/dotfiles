if status is-interactive
    set -l interactive_files ~/.config/fish/conf.d/interactive/*.fish

    if set -q interactive_files[1]
        for file in $interactive_files
            source $file
        end
    end
end
