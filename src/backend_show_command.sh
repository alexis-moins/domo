local backend_name="${args[backend]:-"$(filter_backends)"}"
local command="${args[--exec]}"

local backend_path="$(find_backend "${backend_name}")"

command ${command} "${backend_path}"
