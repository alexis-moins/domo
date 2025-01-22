local backend_name="${args[backend]}"

local new_backend_path="${CONFIG_DIR}/backends/${backend_name}"

command cat > ${new_backend_path} << EOF
# vim: set filetype=sh:
#
# Information about the project are passed as environment variables in the following way:
#
# SPACE        - name of the space the project must be created in.
#
# SPACE_PATH   - absolute path to the space directory.
#
# PROJECT      - name of the project that must be created.
#
# PROJECT_PATH - absolute path to the project directory.
#
echo "Hi from '${backend_name}' backend"
EOF

command "${EDITOR:-vim}" ${new_backend_path}
