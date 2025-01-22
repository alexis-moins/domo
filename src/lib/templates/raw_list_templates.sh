raw_list_templates() {
    #
    # User defined templates
    #
    for file in $(command ls "${CONFIG_DIR}/templates"); do
        echo "${file}"
    done

    #
    # Default templates
    #
    for file in $(command ls "${DATA_DIR}/templates"); do
        echo "${file}"
    done
}
