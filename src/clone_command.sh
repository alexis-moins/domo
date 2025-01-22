#
# Arguments
#

local repository="${args[repository]}"
local path="${args[path]}"

space="$(dirname "${path}")"
name="$(basename "${path}")"

if project_exists "${space}" "${name}"; then
    error "project '${name}' already exists in space '${space}'"
    exit 1
fi

local destination="${DOMO_HOME}/${space}/${name}"

command "${deps[git]}" clone "${repository}" "${destination}"
success "cloned project ${name} in space ${space}"
