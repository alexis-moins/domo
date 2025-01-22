#
# Arguments
#

local path="${args[path]}"

#
# Flags
#

local backend="${args[--backend]}"

#
# BACKEND
#

# If the environment is not specified, use the global environment
if [[ -z "${backend}" ]]; then
    backend="$(get_global_backend)"
fi

# Then get the full path to the 'backend' script
if [[ -n "${backend}" ]]; then
    BACKEND_SCRIPT="$(find_backend "${backend}")"
fi

#
# PATH
#

# If the path is not specified, use the filtered projects
if [[ -z "${path}" ]]; then
    local path="${args[path]:-"$(filter_projects)"}"

    if [[ -z "${path}" ]]; then
        exit 1
    fi
fi

space="$(dirname "${path}")"
name="$(basename "${path}")"

if ! project_exists "${space}" "${name}"; then
    error "no project '${name}' in space '${space}'"
    exit 1
fi

#
# RUN
#

# Export variable that are available within the 'backend' script
export SPACE="${space}"
export SPACE_PATH="${DOMO_HOME}/${space}"

export PROJECT="${name}"
export PROJECT_PATH="${DOMO_HOME}/${space}/${name}"

source "${BACKEND_SCRIPT}"
