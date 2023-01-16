
function create_file {
    local file_path="$1";
    touch "$file_path";
}

function file_exists {
    local file_path="$1";
    if [[ -f "$file_path" ]]; then
        true
    else
        false
    fi
}

function create_file_if_missing {
    local file_path="$1";
    if ! file_exists "$file_path"; then
        create_file "$file_path";
        echo "FILE CREATED: $file_path";
    else
        false
    fi
}

