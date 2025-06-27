# Filter spaces using gum choose.
#
# Usage: filter_spaces "Header text"
filter_spaces() {
    list_spaces | command "${deps[gum]}" choose --header "${1}" --no-show-help
}
