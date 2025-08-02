# Set the prompt
setopt prompt_subst
if [[ -n $SSH_TTY ]]; then
  PROMPT='%F{111}[%D{%H:%M:%S}%f %F{166}SSH%f%F{111}]%f %F{135}%n%f@%F{166}%m%f %F{118}%~%f %F{%(?.118.166)}%#%f '
else
  PROMPT='%F{111}[%D{%H:%M:%S}]%f %F{135}%n%f@%F{166}%m%f %F{118}%~%f %F{%(?.118.166)}%#%f '
fi
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
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' # Case-insensitive and substring completion

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

# Enable key bindings for history search
bindkey '^R' history-incremental-search-backward

# Set editor
export EDITOR='vi'

# Optional scripts
source "$HOME/.local/etc/wmdot/aliases.sh"
source "$HOME/.local/etc/wmdot/add_path.sh"
source "$HOME/.local/etc/wmdot/load_nvm.sh"
