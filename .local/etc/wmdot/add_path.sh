# macOS-specific initialization
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

# extend $PATH without no duplicate
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

# the last become the first in $PATH
__wmdot_add_path \
    "$HOME/.brew/bin"           \
    "$HOME/.brew/sbin"          \
    "$HOME/.cargo/bin"          \
    "$HOME/.local/bin"          \
    "$HOME/.local/share/wmdot"
