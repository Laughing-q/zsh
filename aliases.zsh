alias nv="nvim"
alias ra="ranger"
# alias f="lf"
alias f="lfimg"
alias p="pwd"
alias c="clear"
alias nf="neofetch"

# tmux alias
alias tn="tmux new -s"
alias tl="tmux ls"
alias tk="tmux kill-session -t"
alias ta="tmux attach -t"
alias td="tmux detach"
alias ts="tmux switch -t"
alias tre="tmux rename-session -t"

# lazygit
alias lg="lazygit"

# youtobe-dl
alias \
  yl="youtube-dl -ic --proxy 127.0.0.1:7890" \
  ylx="youtube-dl -xic --proxy 127.0.0.1:7890"

# curl
alias curl="curl --proxy 127.0.0.1:7890"

# Use $XINITRC variable if file exists.
[ -f "$XINITRC" ] && alias startx="startx $XINITRC"
