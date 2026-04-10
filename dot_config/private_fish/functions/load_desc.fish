function load_desc --description 'Load function descriptions for tab completions'
    set -f function_files $fish_function_path/*.fish

    set -q function_files[1]; or return

    for file in $function_files
        test -f $file; or continue

        set -f cmd (basename $file .fish)
        set -f desc (functions -Dv -- $cmd)[5]
    end
end
