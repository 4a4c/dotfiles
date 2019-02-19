# Start of some docker aliases

alias vaquero-validate='docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) shippedrepos-docker-vaquero.bintray.io/vaquero/vaquero:v0.7.0 validate --sot'
alias vaquero='docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) registry.vipertv.net/viper-sde/vaquero:0.14.7``'
alias go-build='docker run --rm -v "$PWD":/usr/src/myapp -v "$HOME/go":/go -w /usr/src/myapp golang:1.6 go build -v'
alias go-make='docker run --rm -v "$PWD":/usr/src/myapp -v "$HOME/go":/go -w /usr/src/myapp golang:1.6 bash -c make'
alias geronimo='docker run -ti --rm -v $PWD:/configs registry.vipertv.net/sde/geronimo:3.0.37'
alias docker-mac='docker run -it --privileged --pid=host debian nsenter -t 1 -m -u -n -i sh'
