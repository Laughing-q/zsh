autoload -U colors && colors	# Load colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# history
# setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
# setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data
# setopt inc_append_history
# setopt inc_append_history_time
# setopt append_history

HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000

# completions
autoload -U compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# case insensitive (all), partial-word and substring completion
if [[ "$CASE_SENSITIVE" = true ]]; then
  zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'
else
  if [[ "$HYPHEN_INSENSITIVE" = true ]]; then
    zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
  else
    zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
  fi
fi
unset CASE_SENSITIVE HYPHEN_INSENSITIVE

# Useful Functions
source "$ZDOTDIR/functions.zsh"

# Normal files to source
zsh_add_file "keybindings.zsh"
zsh_add_file "aliases.zsh"
zsh_add_file "prompt.zsh"
zsh_add_file "env.zsh"

# fzf and fd(more faster `find`), install first.
zsh_add_file "fzf/custom.zsh"
zsh_add_file "fzf/key-bindings.zsh"
zsh_add_file "fzf/completion.zsh"
# zsh_add_file "fzf/functions.zsh"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init

source /opt/anaconda/bin/activate root
# autojump, install first.
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
