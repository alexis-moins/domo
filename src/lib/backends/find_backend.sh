find_backend() {
    # Find a backend by its name.
    local backend="${CONFIG_DIR}/backends/${1}"

    if [[ ! -f "${backend}" ]]; then
        # If not found, search in default backends
        backend="${DATA_DIR}/backends/${1}"

        if [[ ! -f "${backend}" ]]; then
            error "backend '${1}' not found"
            exit 1
        fi
    fi

    echo "${backend}"
}
