export EDITOR=nvim
export BROWSER=google-chrome-stable
export TERMINAL="st"

export XDG_CONFIG_HOME="$HOME/.config" 
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc" 

# export PATH="/home/laughing/anaconda3/bin:$PATH"
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/laughing/TensorRT-7.1.3.4/lib

# source /opt/anaconda/bin/activate root
eval "$(perl -I $HOME/perl5/lib/perl5 -Mlocal::lib)"
# 
# export GOROOT=/usr/lib/go
# export GOPATH=~/workspace/go
# export GOBIN=~/workspace/go/gobin
# export PATH=$PATH:$GOROOT/bin:$GOBIN
#
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus

export PATH=$PATH:/home/laughing/.local/bin
export TERMINFO=/usr/share/terminfo
#
#
# systemctl start runsunloginclient.service

# proxy
export ALL_PROXY=socks5://127.0.0.1:7890
# export http_proxy=http://127.0.0.1:7890
# export https_proxy=https://127.0.0.1:7890
