source "${BASH_SOURCE%/*}/_bin_options.sh";

function get_current_binary_path_index_from_available_options {
    local current_shell_binary_path="$1";
    shift;
    local shell_binary_path_options=("$@");

    echo_index_if_listed "$current_shell_binary_path" "${shell_binary_path_options[@]}";
}

function set_bash_or_zsh_shell_type_to_display_for_user_current_shell {
    local user_shell_binary="$1";
    local bash_shell_binary="$2";
    local zsh_shell_binary="$3";

    if [[ "$user_shell_binary" = "$bash_shell_binary" ]]; then
        local shell_type_to_display="BASH";
    elif [[ "$user_shell_binary" = "$zsh_shell_binary" ]]; then
        local shell_type_to_display="ZSH";
    else
    # to-do, update this with better error handling
        throw_error_message "ERROR";
    fi
    echo "$shell_type_to_display";
}

current_user_config_file_path_index=$(get_current_binary_path_index_from_available_options "$current_user_shell_binary_path" "${supported_shell_binary_path_options[@]}");
