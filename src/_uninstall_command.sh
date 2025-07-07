#
# Arguments
#
local destination="${args[destination]}"

inspect_args

#
# Flags
#
local soft="${args[--soft]}"

if [[ -n "${soft}" ]]; then
    # Don't remove the global backend file
    command rm -rf "${DATA_DIR}/backends" "${DATA_DIR}/templates"
else
    command rm -rf "${DATA_DIR}"
fi

if [[ -f "${destination}/domo" ]]; then
    command rm "${destination}/domo"
fi

success "uninstalled successfully"
