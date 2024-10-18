# Sets autocompletion for framework console commands.
# Supports Fish version >=3.0.
function __fish_php_console_complete
    set -l prev (commandline -cp)
    set -l cur (commandline -ct)

    if test "$prev[-1]" = "console"
        # Getting a list of commands.
        set command_list (php console command-list-feature 2>/dev/null)

        if test $status -ne 0
            echo "Error: Unable to retrieve command list." >&2
            return 1
        end

        for cmd in $command_list
            echo $cmd
        end
    else if not test "$prev[-2]" = "console"
        if test "$prev[1]" = "console"
            # Receive a list of arguments.
            set argument_list (php console command-arguments-feature $prev[2] 2>/dev/null)

            if test $status -ne 0
                echo "Error: Unable to retrieve argument list." >&2
                return 1
            end

            for arg in $argument_list
                echo $arg
            end
        end
    end
end
