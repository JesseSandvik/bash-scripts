
function is_matching {
    local first_element="$1";
    local second_element="$2";
    if [[ "$first_element" = "$second_element" ]]; then
        true
    else
        false
    fi
}

function is_listed {
    local element_to_find="$1";
    shift;
    local list_of_elements=("$@");

    for element in "${list_of_elements[@]}"; do
        if is_matching "$element_to_find" "$element"; then
            true
        else
            false
        fi
    done
}
