template_exists() {
    [[ ! -f "${DATA_DIR}/templates/${1}" ]] && [[ ! -f "${CONFIG_DIR}/templates/${1}" ]] && return 1 || return 0
}
