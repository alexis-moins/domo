#
# Arguments
#
local destination="${args[destination]}"

command rm -rf "${DATA_DIR}"

if [[ -f "${destination}/domo" ]]; then
    command rm "${destination}/domo"
fi

success "uninstalled successfully"
