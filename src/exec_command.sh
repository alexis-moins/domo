#
# Arguments
#
local command="${args[command]}"

#
# Flags
#
local path="${args[--path]:-$(filter_projects)}"
[[ -z "${path}" ]] && exit 1

space="$(dirname "${path}")"
name="$(basename "${path}")"

if ! project_exists "${space}" "${name}"; then
    error "no project '${name}' in space '${space}'"
    exit 1
fi

cd "${DOMO_HOME}/${path}"

command ${command[@]}
