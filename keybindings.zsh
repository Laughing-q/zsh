# more details see 
# http://bolyai.cs.elte.hu/zsh-manual/zsh_14.html
# https://github.com/theniceboy/.config/blob/master/zsh/vi.zsh

# vi
bindkey -M vicmd "h" vi-insert
bindkey -M vicmd "H" vi-insert-bol
bindkey -M vicmd "j" vi-backward-char
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "J" vi-beginning-of-line
bindkey -M vicmd "L" vi-end-of-line
bindkey -M vicmd "k" down-line-or-history
bindkey -M vicmd "i" up-line-or-history

# base
bindkey "^E" end-of-line
# bindkey -r "^u"
bindkey "^P" up-history
bindkey "^N" down-history

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^k' edit-command-line

# fzf
# bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'
