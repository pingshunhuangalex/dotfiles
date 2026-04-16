# Remove OS login message
if status is-interactive
    clear
    printf "\e[3J" # Clear scrollback buffer
end
