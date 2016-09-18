#!/usr/bin/env bash

set -e

mkdir -p $DOTFILES/vim/autoload $DOTFILES/vim/bundle && \
curl -LSso $DOTFILES/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
