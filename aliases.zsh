alias nv="nvim"
alias ra="ranger"
alias p="pwd"
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

# Use $XINITRC variable if file exists.
[ -f "$XINITRC" ] && alias startx="startx $XINITRC"
