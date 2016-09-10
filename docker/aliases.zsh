# Start of some docker aliases

alias vaquero-validate='docker run --rm -it -v $(pwd):$(pwd) -w $(pwd) shippedrepos-docker-vaquero.bintray.io/vaquero/vaquero:0.1 validate --sot-dir'
