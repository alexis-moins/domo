filter_backends() {
    # Get all backends without formatting
    local backends="$(raw_list_backends)"

    if [[ -n "${backends}" ]]; then
        pipe "${backends}" | command "${deps[gum]}" filter --placeholder "Filter backends..."
    fi
}
