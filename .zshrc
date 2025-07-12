# Set the prompt
setopt prompt_subst
PROMPT='%F{111}[%D{%H:%M:%S}]%f %F{135}%n%f@%F{166}%m%f %F{118}%~%f %F{%(?.118.166)}%#%f '
TMOUT=1
TRAPALRM() {
  zle reset-prompt
}

# Enable history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt appendhistory sharehistory histignorealldups

# Enable auto-completion
fpath=("$HOME/.local/share/zsh-completions/src" $fpath)
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # Case-insensitive completion

# Enable vi mode
bindkey -v

# Enable zsh-autosuggestions
source "$HOME/.local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Enable zsh-syntax-highlighting
source "$HOME/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Enable zsh-history-substring-search
source "$HOME/.local/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey -M vicmd "$terminfo[kcuu1]" history-substring-search-up   # Up arrow
bindkey -M vicmd "$terminfo[kcud1]" history-substring-search-down # Down arrow
bindkey -M viins "$terminfo[kcuu1]" history-substring-search-up
bindkey -M viins "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd '^[[A' history-substring-search-up
bindkey -M vicmd '^[[B' history-substring-search-down
bindkey -M viins '^[[A' history-substring-search-up
bindkey -M viins '^[[B' history-substring-search-down

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

