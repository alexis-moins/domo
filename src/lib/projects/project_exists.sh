project_exists() {
    [[ -d "${DOMO_HOME}/${1}/${2}" ]] && return 0 || return 1
}
