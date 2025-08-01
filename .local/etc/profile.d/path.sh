# macOS-specific initialization
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

__wmdot_add_path () {
    for candidate in $@; do
        [ -d "$candidate" ] || continue
        case ":$PATH:" in
            *":$candidate:"*) :;;
            *) PATH="$candidate:$PATH"
        esac
    done

    export PATH
}

__wmdot_add_path \
    "$HOME/.brew/bin"           \
    "$HOME/.brew/sbin"          \
    "$HOME/.local/bin"          \
    "$HOME/.local/share/wmdot"
