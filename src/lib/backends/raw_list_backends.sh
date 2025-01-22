raw_list_backends() {
    #
    # User defined backends
    #
    for file in $(command ls "${CONFIG_DIR}/backends"); do
        echo "${file}"
    done

    #
    # Default backends
    #
    for file in $(command ls "${DATA_DIR}/backends"); do
        echo "${file}"
    done
}
