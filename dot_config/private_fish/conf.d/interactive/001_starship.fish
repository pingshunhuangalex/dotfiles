if type -q starship
    function starship_transient_prompt_func
        # NOTE: $pipestatus is highly volatile and need to be captured immediately at the start of the prompt
        set -f last_pipestatus "$pipestatus"
        # NOTE: Starship passes its internal state via flags to this function. We must use argparse to extract the --status flag it sends
        argparse --ignore-unknown 'status=' -- $argv

        if set -q _flag_status
            set -f last_status $_flag_status
        else
            set -f last_status 0
        end

        # NOTE: Wrap $COLUMNS in quotes to fall back to ""
        # NOTE: Wrap $last_pipestatus in quotes to prevent the shell from splitting the array output
        env STARSHIP_CONFIG=$STARSHIP_TRANSIENT_CONFIG \
        starship prompt \
            --terminal-width="$COLUMNS" \
            --status=$last_status \
            --pipestatus="$last_pipestatus" \
            --cmd-duration=$CMD_DURATION \
            --jobs=$jobs
    end

    starship init fish | source
    enable_transience
end
