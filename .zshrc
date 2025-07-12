# Set the prompt
PROMPT='%F{green}%n@%m%f %F{yellow}%~%f $ '

# Enable history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt appendhistory sharehistory histignorealldups

# Enable auto-completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # Case-insensitive completion

# Enable vi mode
bindkey -v

# Aliases
alias ls='ls -G'   # Colorized ls output (macOS/BSD)
alias ll='ls -lh'  # Long listing with human-readable sizes
alias la='ls -lha' # Show all files, including hidden
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Set editor
export EDITOR='vi'

# Add custom paths
export PATH="$HOME/.local/share/wmdot:$PATH"

# Enable key bindings for history search
bindkey '^R' history-incremental-search-backward
