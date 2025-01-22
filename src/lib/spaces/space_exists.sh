space_exists() {
    [[ -d "${DOMO_HOME}/${1}" ]] && return 0 || return 1
}
