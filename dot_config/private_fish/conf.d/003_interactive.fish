if status is-interactive
    set -l interactive_files $XDG_CONFIG_HOME/fish/conf.d/interactive/*.fish

    set -q interactive_files[1]; or return

    for file in $interactive_files
        test -f $file; or continue

        source $file
    end
end
