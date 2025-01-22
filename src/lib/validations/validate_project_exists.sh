validate_project_exists() {
    if [[ ! "${1}" = */* ]] || [[ ! -d "${DOMO_HOME}/${1}" ]]; then
        error "project not found: ${1}"
    fi
}
