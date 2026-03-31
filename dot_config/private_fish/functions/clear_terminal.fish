function clear_terminal --description 'Clear the terminal screen after initialising the shell'
    clear
    printf "\e[3J" # Clear scrollback buffer
end
