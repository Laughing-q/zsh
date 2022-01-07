 autoload -U colors && colors	# Load colors
 export LSCOLORS="Gxfxcxdxbxegedabagacad"

 setopt autocd		# Automatically cd into typed directory.
 stty stop undef		# Disable ctrl-s to freeze terminal.
 setopt interactive_comments
 # setopt appendhistory

 HISTFILE=~/.zsh_history

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
     # zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
     echo -ne "\e[5 q"
 }
 zle -N zle-line-init

 # autojump, install first.
 [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

d() {
  IFS=$'\n'
  dirs=($(fd . --type d "${@:2}" | fzf -0 -1 -m))
  IFS=$' '
  [[ -n "$dirs" ]] && $1 "${dirs[@]}"
}
