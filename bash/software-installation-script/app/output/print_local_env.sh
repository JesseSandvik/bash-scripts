
function print_user_local_environment_system_messages {
    local user_information="$1";
    local user_operating_system_information="$2";
    local user_shell_display_information="$3";

    local user_local_environment_information_messages=(
        ""
        "== YOUR LOCAL ENVIRONMENT STATUS ==========================="
        ""
        ">  [FOUND] USER: $user_information"
        ">  [FOUND] OPERATING SYSTEM: $user_operating_system_information"
        ">  [FOUND] SHELL TYPE: $user_shell_display_information"
        ""
    );

    print_all_generic_messages "${user_local_environment_information_messages[@]}";
}

print_user_local_environment_system_messages "$current_user" "$current_user_operating_system" "$current_shell_display_text";
