list_projects() {
    find "${DOMO_HOME}" -maxdepth 2 -mindepth 2 -type d ! -name '.*' \
        | sed "s!${DOMO_HOME}/!!"
}
