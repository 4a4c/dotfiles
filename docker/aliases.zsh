# Start of some docker aliases

alias vaquero-validate='docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) shippedrepos-docker-vaquero.bintray.io/vaquero/vaquero:0.1 validate --sot-dir'
alias go-build='docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.6 go build -v'
alias go-make='docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.6 bash -c make'
