FAIL_MESSAGE_CACHE=();
GENERIC_MESSAGE_CACHE=();
INFORMATION_MESSAGE_CACHE=();
SUCCESS_MESSAGE_CACHE=();
SYSTEM_MESSAGE_CACHE=();
WARNING_MESSAGE_CACHE=();

FLAG_STATUS_OPTIONS=(
    "ERROR"
    "FAIL"
    "INFO"
    "SUCCESS"
    "WARNING"
);

function throw_error_for_error_status_flag {
    local status_flag="$1";
    if [[ "$status_flag" = "ERROR" ]]; then
        throw_error_message "[ERROR] $message";
    fi
}

function throw_error_for_fail_status_flag {
    local status_flag="$1";
    if [[ "$status_flag" = "FAIL" ]]; then
        throw_error_message "[ERROR] $message";
    fi
}

function attach_status_flag_to_message {
    local status_flag="$1";
    local message="$2";

    throw_error_for_error_status_flag "$status_flag";

    local status_flag_with_message="[$status_flag] $message";
    echo "$status_flag_with_message";
}

function print_error_message {
    local element="$1";
    printf '\e[1;91m%-6s\e[m\n' "$element";
}

function print_generic_message {
    local element="$1";
    printf '\e[1m%-6s\e[m\n' "$element";
}

function print_information_message {
    local element="$1";
    printf '\e[1;96m%-6s\e[m\n' "$element";
}

function print_success_message {
    local element="$1";
    printf '\e[1;92m%-6s\e[m\n' "$element";
}

function print_system_message {
    local element="$1";
    printf '\e[1;35m%-6s\e[m\n' "$element";
}

function print_warning_message {
    local element="$1";
    printf '\e[1;93m%-6s\e[m\n' "$element";
}

function print_all_error_messages {
    local elements_to_print=("$@");

    for element in "${elements_to_print[@]}"; do
        print_error_message "$element";
    done
}

function print_all_generic_messages {
    local elements_to_print=("$@");

    for element in "${elements_to_print[@]}"; do
        print_generic_message "$element";
    done
}

function print_all_information_messages {
    local elements_to_print=("$@");

    for element in "${elements_to_print[@]}"; do
        print_information_message "$element";
    done
}

function print_all_success_messages {
    local elements_to_print=("$@");

    for element in "${elements_to_print[@]}"; do
        print_success_message "$element";
    done
}

function print_all_system_messages {
    local elements_to_print=("$@");

    for element in "${elements_to_print[@]}"; do
        print_system_message "$element";
    done
}

function print_all_warning_messages {
    local elements_to_print=("$@");

    for element in "${elements_to_print[@]}"; do
        print_warning_message "$element";
    done
}

function throw_error_message {
    local error_message="$1";
    printf '\e[1;91m%-6s\e[m\n' "[ERROR] $error_message";
    exit 2;
}
