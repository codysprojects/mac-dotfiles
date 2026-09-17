# Golang environment variables https://github.com/danielmiessler/fabric?tab=readme-ov-file#environment-variables
export GOROOT=$(brew --prefix go)/libexec
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

