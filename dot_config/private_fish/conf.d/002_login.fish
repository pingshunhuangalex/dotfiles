if status is-login
    set -l login_files $XDG_CONFIG_HOME/fish/conf.d/login/*.fish

    if set -q login_files[1]
        for file in $login_files
            test -f $file; or continue

            source $file
        end
    end
end
