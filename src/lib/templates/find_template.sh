find_template() {
    # Find a template by its name.
    local template="${CONFIG_DIR}/templates/${1}"

    if [[ ! -f "${template}" ]]; then
        # If not found, search in default templates
        template="${DATA_DIR}/templates/${1}"

        if [[ ! -f "${template}" ]]; then
            error "template '${1}' not found"
            exit 1
        fi
    fi

    echo "${template}"
}
