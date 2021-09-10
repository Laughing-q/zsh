# more details see 
# http://bolyai.cs.elte.hu/zsh-manual/zsh_14.html
# https://github.com/theniceboy/.config/blob/master/zsh/vi.zsh

bindkey -M vicmd "h" vi-insert
bindkey -M vicmd "H" vi-insert-bol
bindkey -M vicmd "j" vi-backward-char
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "J" vi-beginning-of-line
bindkey -M vicmd "L" vi-end-of-line
bindkey -M vicmd "k" down-line-or-history
bindkey -M vicmd "i" up-line-or-history


VI_MODE_SET_CURSOR=true
