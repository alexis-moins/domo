backend_exists() {
    if [[ -f "${DATA_DIR}/backends/${1}" ]] || [[ -f "${CONFIG_DIR}/backends/${1}" ]]; then
        return 0
    else
        return 1
    fi
}
