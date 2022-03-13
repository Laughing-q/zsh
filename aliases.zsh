alias ra="ranger"
alias e="$EDITOR"
alias v="$EDITOR"
alias z="zathura"
# alias f="lf"
alias f="lfimg"
alias p="pwd"
# alias c="clear"
alias nf="neofetch"
alias mkdir="mkdir -pv"
alias rm="rm -vI"
alias cmake="cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON"

# tmux alias
alias tn="tmux new -s"
alias tl="tmux ls"
alias tk="tmux kill-session -t"
alias ta="tmux attach -t"
alias td="tmux detach"
alias ts="tmux switch -t"
alias tre="tmux rename-session -t"

# lazygit
alias gg="lazygit"

# youtobe-dl
alias \
  yl="youtube-dl -ic --add-metadata --proxy 127.0.0.1:7890" \
  ylx="youtube-dl -xic --audio-format mp3 --proxy 127.0.0.1:7890"
  # ylx="youtube-dl -xic --audio-format mp3 --add-metadata --proxy 127.0.0.1:7890"

# curl
alias curl="curl --proxy 127.0.0.1:7890"

# Use $XINITRC variable if file exists.
[ -f "$XINITRC" ] && alias startx="startx $XINITRC"

# watch gpu
alias wa="watch -n 1 nvidia-smi"

# ls
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lh'

# path
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# git
alias g='git'
alias gc='git clone'
alias gl='git pull'
alias gp='git push'

# grep
grep-flags-available() {
    command grep "$@" "" &>/dev/null <<< ""
}

# Ignore these folders (if the necessary grep flags are available)
EXC_FOLDERS="{.bzr,CVS,.git,.hg,.svn,.idea,.tox}"

# Check for --exclude-dir, otherwise check for --exclude. If --exclude
# isn't available, --color won't be either (they were released at the same
# time (v2.5): https://git.savannah.gnu.org/cgit/grep.git/tree/NEWS?id=1236f007
if grep-flags-available --color=auto --exclude-dir=.cvs; then
    GREP_OPTIONS="--color=auto --exclude-dir=$EXC_FOLDERS"
elif grep-flags-available --color=auto --exclude=.cvs; then
    GREP_OPTIONS="--color=auto --exclude=$EXC_FOLDERS"
fi

if [[ -n "$GREP_OPTIONS" ]]; then
    # export grep, egrep and fgrep settings
    alias grep="grep $GREP_OPTIONS"
    alias egrep="egrep $GREP_OPTIONS"
    alias fgrep="fgrep $GREP_OPTIONS"

    # write to cache file if cache directory is writable
    if [[ -w "$ZSH_CACHE_DIR" ]]; then
        alias -L grep egrep fgrep >| "$__GREP_CACHE_FILE"
    fi
fi

# Clean up
unset GREP_OPTIONS EXC_FOLDERS
unfunction grep-flags-available
