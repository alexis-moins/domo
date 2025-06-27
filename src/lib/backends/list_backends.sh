list_backends() {
    default_backend="$(get_global_backend)"

    #
    # User defined backends
    #
    for file in $(command ls "${CONFIG_DIR}/backends"); do
        if [[ "${file}" == "${default_backend}" ]]; then
            echo "$(green "*") ${file}"
        else
            echo "  ${file}"
        fi
    done

    #
    # Default backends
    #
    for file in $(command ls "${DATA_DIR}/backends"); do
        if [[ "${file}" == "${default_backend}" ]]; then
            echo "$(green "*") ${file}"
        else
            echo "$(blue "D") ${file}"
        fi
    done
}
