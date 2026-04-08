function load_desc --description "Load function descriptions for tab completions"
    for file in $fish_function_path/*.fish
        if not test -f $file
            continue
        end

        set -f cmd (basename $file .fish)
        set -f desc (functions -Dv -- $cmd)[5]
    end
end
