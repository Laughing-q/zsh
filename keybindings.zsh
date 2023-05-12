# more details see 
# http://bolyai.cs.elte.hu/zsh-manual/zsh_14.html
# https://github.com/theniceboy/.config/blob/master/zsh/vi.zsh

# vi
bindkey -M vicmd "h" vi-insert
bindkey -M vicmd "H" vi-insert-bol
bindkey -M vicmd "j" vi-backward-char
bindkey -M visual "j" vi-backward-char
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "J" vi-beginning-of-line
bindkey -M vicmd "L" vi-end-of-line
bindkey -M vicmd "k" down-line-or-history
bindkey -M vicmd "i" up-line-or-history

VI_MODE_SET_CURSOR=true

# base
bindkey "^E" end-of-line
# bindkey -r "^u"
bindkey "^P" up-history
bindkey "^N" down-history
bindkey '^s' forward-word

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd '^k' edit-command-line
# bindkey '^k' edit-command-line

lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
    lfimg -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
# `-s` will not work if remap `^j`
bindkey -s '^f' '^ulfimg\n'
# bindkey -s '^g' '^ulfcd\n'
bindkey -s '^a' '^ubc -lq\n'
bindkey -s '^g' '^utmux-sessionizer\n'

# fzf
# bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'
