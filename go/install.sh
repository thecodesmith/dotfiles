GOPATH=$HOME/projects/go
GOROOT=/usr/local/opt/go/libexec

mkdir -p $GOPATH
mkdir -p $GOPATH/src/github.com/thecodesmith

export GOPATH=$GOPATH
export GOROOT=$GOROOT
export PATH=$GOPATH/bin:$PATH
export PATH=$GOROOT/bin:$PATH

brew update
brew install go
brew install git
brew install hg
brew install bzr

go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet
