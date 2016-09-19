#!/usr/bin/env bash

set -e

# pre-work
VIM_DIR=$(dirname -- "$0")
BUNDLE_DIR="$VIM_DIR/bundle"
mkdir -p $BUNDLE_DIR

# install pathogen
BUNDLE_NAME=vim-pathogen
BUNDLE_REPO="https://github.com/tpope/vim-pathogen.git"
if [ ! -d  $BUNDLE_DIR/$BUNDLE_NAME ]; then
	git submodule add $BUNDLE_REPO $BUNDLE_DIR/$BUNDLE_NAME
fi

# install sensible-vim
#BUNDLE_DIR='vim-sensible'
#if [ ! -d $DOTFILES/vim/bundle/$BUNDLE_DIR ]; then
#  git clone git://github.com/tpope/vim-sensible.git $DOTFILES/vim/bundle/$BUNDLE_DIR
#fi
