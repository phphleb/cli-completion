# Sets autocompletion for framework console commands.
# Supports Bash version >=4.0.
_bash_php_console_complete() {
    local cur prev words cword command_list argument_list
    COMPREPLY=()
    _get_comp_words_by_ref -n : cur prev words cword

    if [[ "$prev" == "console" ]]; then
        # Getting a list of commands.
        command_list=$(php console command-list-feature 2>/dev/null)

        if [[ $? -ne 0 ]]; then
            echo "Error: Unable to retrieve command list." >&2
            return 1
        fi

        COMPREPLY=( $(compgen -W "${command_list}" -- "${cur}") )
    elif [[ "$prev" != "console" && "${words[1]}" == "console" ]]; then
        # Receive a list of arguments.
        argument_list=$(php console command-arguments-feature "${words[2]}" 2>/dev/null)

        if [[ $? -ne 0 ]]; then
            echo "Error: Unable to retrieve argument list." >&2
            return 1
        fi

        COMPREPLY=( $(compgen -W "${argument_list}" -- "${cur}") )
    fi

    return 0
}

complete -F _bash_php_console_complete php
