filter_templates() {
    local templates="$(raw_list_templates)"

    if [[ -n "${templates}" ]]; then
        pipe "${templates}" | command "${deps[gum]}" filter --placeholder="Select a template"
    fi
}
