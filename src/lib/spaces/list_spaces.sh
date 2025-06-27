list_spaces() {
    find "${DOMO_HOME}" -maxdepth 1 -mindepth 1 -type d ! -name '.*' \
        | sed "s!${DOMO_HOME}/!!"
}
