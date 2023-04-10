export EDITOR=nvim
export BROWSER=google-chrome-stable
export TERMINAL="st"
export ZDOTDIR="$HOME/.config/zsh"

export XDG_CONFIG_HOME="$HOME/.config" 
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc" 

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/TensorRT-8.4.1.5/lib

# source /opt/anaconda/bin/activate root
# eval "$(perl -I $HOME/perl5/lib/perl5 -Mlocal::lib)"
# 
# export GOROOT=/usr/lib/go
# export GOPATH=~/workspace/go
# export GOBIN=~/workspace/go/gobin
# export PATH=$PATH:$GOROOT/bin:$GOBIN
#
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus

export PATH=$PATH:$HOME/.local/bin:/usr/local/bin:$HOME/.cargo/bin
export TERMINFO=/usr/share/terminfo

# export CUDA_PATH=/opt/cuda
# export PATH=$PATH:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/lib64
# export PATH=$PATH:/opt/cuda/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64
export PATH=$PATH:/usr/local/cuda/bin



# systemctl start runsunloginclient.service

# fzf setting
# export FZF_DEFAULT_OPTS="--bind=ctrl-k:down,ctrl-i:up --border --preview='$ZDOTDIR/fzf/preview.sh {}'"
export FZF_DEFAULT_OPTS="--bind=ctrl-k:down,ctrl-i:up"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# proxy
# export ALL_PROXY=socks5://172.16.11.2:7890
# export http_proxy=http://172.16.11.33:7892
# export https_proxy=https://172.16.11.33:7892
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📙:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.doc=📘:\
*.docx=📘:\
*.pptx=📒:\
*.tex=📜:\
*.md=📗:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=📻:\
*.opus=📻:\
*.ogg=📻:\
*.m4a=📻:\
*.flac=🎼:\
*.wav=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.mov=🎥:\
*.mpg=🎥:\
*.wmv=🎥:\
*.m4b=🎥:\
*.flv=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
*.py=🍀:\
*.lua=🌸:\
*.h=🌲:\
*.c=☘️:\
*.cpp=☘️:\
*.hpp=🌳:\
*.zsh=⚙️:\
*.pt=🪵:\
*.pth=🪵:\
*.onnx=🪨:\
*.engine=🏠:\
*.om=🏠:\
*.bmodel=🏠:\
"

# export LF_COLORS="\
# ~/Documents=01;31:\
# ~/Downloads=01;31:\
# ~/.local/share=01;31:\
# ~/.config/lf/lfrc=31:\
# .git/=01;32:\
# .git=32:\
# .gitignore=32:\
# Makefile=32:\
# README.*=33:\
# *.txt=34:\
# *.md=34:\
# ln=01;36:\
# di=01;34:\
# ex=01;32:\
# "

# export https_proxy=https://127.0.0.1:7890
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
