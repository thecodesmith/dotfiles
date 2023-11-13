export GO111MODULE=on
export GOPATH=$PROJECTS/go
export GOROOT="$(brew --prefix)/opt/go/libexec"
export PATH="$GOPATH/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"

mkdir -p $GOPATH
mkdir -p $GOPATH/src/github.com/thecodesmith
