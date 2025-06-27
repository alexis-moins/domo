local template_name="${args[template]}"

local new_template_path="${CONFIG_DIR}/templates/${template_name}"

command cat > ${new_template_path} << EOF
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
echo "Hi from '${template_name}' template"
EOF

command "${EDITOR:-vim}" ${new_template_path}
