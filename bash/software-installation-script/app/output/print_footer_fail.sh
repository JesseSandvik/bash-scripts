
function print_installation_fail_system_messages {
    local installation_start_system_messages=(
        ""
        "============================================================"
        "=================== INSTALLATION FAILED ===================="
        "============================================================"
        ""
    );

    print_all_system_messages "${installation_start_system_messages[@]}";
}

print_installation_fail_system_messages;
