export EDITOR=nvim

export PATH="/home/laughing/anaconda3/bin:$PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/laughing/TensorRT-7.1.3.4/lib

source /opt/anaconda/bin/activate root
eval "$(perl -I $HOME/perl5/lib/perl5 -Mlocal::lib)"
xmodmap ~/.xmodmap

export GOROOT=/usr/lib/go
export GOPATH=~/workspace/go
export GOBIN=~/workspace/go/gobin
export PATH=$PATH:$GOROOT/bin:$GOBIN
