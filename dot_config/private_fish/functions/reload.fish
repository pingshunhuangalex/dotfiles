function reload --wraps='exec fish -l -i' --description 'Reload the terminal'
    exec fish -l -i $argv
end
