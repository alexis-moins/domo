local path="${args[path]}"

local template="${args[--template]}"
local backend="${args[--backend]}"

# Path to the current template
TEMPLATE_SCRIPT="$(find_template "${template}")"

#
# BACKEND
#

# If the backend is not specified, use the global backend
if [[ -z "${backend}" ]]; then
    backend="$(get_global_backend)"
fi

# Then get the full path to the 'backend' script
if [[ -n "${backend}" ]]; then
    BACKEND_SCRIPT="$(find_backend "${backend}")"
fi

#
# SPACE and PROJECT
#

space="$(dirname "${path}")"

if ! space_exists "${space}"; then
    error "'${space}' is not a valid space"
    exit 1
fi

project_name="$(basename "${path}")"

if project_exists "${space}" "${project_name}"; then
    error "project '${project_name}' already exists in space '${space}'"
    exit 1
fi

# Export variable that will be usable within the template and backend scripts
export SPACE="${space}"
export SPACE_PATH="${DOMO_HOME}/${space}"

export PROJECT="${project_name}"
export PROJECT_PATH="${DOMO_HOME}/${space}/${project_name}"

source "${TEMPLATE_SCRIPT}"

if [[ "${?}" -eq 0 ]]; then
    success "project '${project_name}' created in space '${space}'"
else
    error "unable to create project"
    exit 1
fi

source "${BACKEND_SCRIPT}"
