GOPATH=$HOME/projects/go
GOROOT=/usr/local/opt/go/libexec

mkdir -p $GOPATH
mkdir -p $GOPATH/src/github.com/thecodesmith

export GOPATH=$GOPATH
export GOROOT=$GOROOT
export PATH=$GOPATH/bin:$PATH
export PATH=$GOROOT/bin:$PATH

brew install golang
