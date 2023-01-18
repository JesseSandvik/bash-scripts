#!/bin/bash

function create_file {
    touch "$1";
}

function file_exists {
    if [[ -f "$1" ]]; then
        true
    else
        false
    fi
}

function create_file_if_it_does_not_exist {
    if ! file_exists "$1"; then
        create_file "$1";
    fi
}

function is_matching {
    if [[ "$1" -eq "$2" ]]; then
        true;
    else
        false;
    fi
}

bash_shell_bin_file_path="/usr/bin/bash";
bash_config_file_path="$HOME/.bashrc";

zsg_shell_bin_file_path="/usr/bin/zsh";
zsh_config_file_path="$HOME/.zshrc";

create_file_if_it_does_not_exist "$zsh_config_file_path";