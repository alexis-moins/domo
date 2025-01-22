#
# Arguments
#
local destination="${args[destination]}"

dirs=(
    # The home directory for domo projects
    "${DOMO_HOME}"

    # Store domo data
    "${DATA_DIR}/templates"
    "${DATA_DIR}/backends"

    # Store user configuration
    "${CONFIG_DIR}/templates"
    "${CONFIG_DIR}/backends"
)

# Create missing directories
for dir in ${dirs[*]}; do
    if [[ ! -d "${dir}" ]]; then
        command mkdir -p "${dir}"
    fi
done

# Copy the default templates and backends into the data directory
command cp -R ./backends "${DATA_DIR}/"
command cp -R ./templates "${DATA_DIR}/"

# Sets the default global backend to 'shell'
echo "shell" > "${DATA_DIR}/global-backend"

command cp domo "${destination}/domo"
success "ready to use"
