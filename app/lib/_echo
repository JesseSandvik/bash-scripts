
function echo_index_if_listed {
    local element_to_find="$1";
    shift;
    local list_of_elements=("$@");

    for i in "${!list_of_elements[@]}"; do
        if is_matching "$element_to_find" "${list_of_elements[$i]}"; then
            echo "$i";
        fi
    done
}
