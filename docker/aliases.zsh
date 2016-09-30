# Start of some docker aliases

alias vaquero-validate='docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) shippedrepos-docker-vaquero.bintray.io/vaquero/vaquero:v0.6.6 validate --sot'
alias go-build='docker run --rm -v "$PWD":/usr/src/myapp -v "$HOME/go":/go -w /usr/src/myapp golang:1.6 go build -v'
alias go-make='docker run --rm -v "$PWD":/usr/src/myapp -v "$HOME/go":/go -w /usr/src/myapp golang:1.6 bash -c make'
