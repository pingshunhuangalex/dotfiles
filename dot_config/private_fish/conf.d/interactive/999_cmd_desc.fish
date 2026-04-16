set -l function_files $fish_function_path/*.fish

if set -q function_files[1]
    for file in $function_files
        test -f $file; or continue

        set -l cmd (basename $file .fish)
        set -l desc (functions -Dv -- $cmd)[5]
    end
end
