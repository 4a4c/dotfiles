#!/usr/bin/env bash

set -e

# install pathogen
mkdir -p $DOTFILES/vim/autoload $DOTFILES/vim/bundle && \
if [ ! -f $DOTFILES/vim/autoload/pathogen.vim ]; then
  curl -LSso $DOTFILES/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

# install sensible-vim
BUNDLE_DIR='vim-sensible'
if [ ! -d $DOTFILES/vim/bundle/$BUNDLE_DIR ]; then
  git clone git://github.com/tpope/vim-sensible.git $DOTFILES/vim/bundle/$BUNDLE_DIR
fi
