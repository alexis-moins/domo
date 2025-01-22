spaces=''
eval "spaces=(${args[spaces]:-})"

for space in "${spaces[@]}"; do
    run_silent mkdir "${DOMO_HOME}/${space}"
    success "added space '${space}'"
done
