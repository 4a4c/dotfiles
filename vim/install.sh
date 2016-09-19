#!/usr/bin/env bash

set -e

# pre-work
# dirname command is using script dir regardless of where it is executed from
VIM_DIR=$(dirname -- "$0")
BUNDLE_DIR="$VIM_DIR/bundle"
mkdir -p $BUNDLE_DIR

# loop through csv and install bundles
# tail -n +2 reads all lines starting on 2 (excluders headers)
tail -n +2 $VIM_DIR/bundles.csv | while read line; do
	# set some vars
	CURRENT_LINE=$(echo $line)
	BUNDLE_NAME=$(echo $CURRENT_LINE | awk -F ',' '{print $1}')
	BUNDLE_REPO=$(echo $CURRENT_LINE | awk -F ',' '{print $2}')
	
	# echo message
	echo "checking for $BUNDLE_NAME from $BUNDLE_REPO"

	if [ ! -d  $BUNDLE_DIR/$BUNDLE_NAME ]; then
		git submodule add --force $BUNDLE_REPO $BUNDLE_DIR/$BUNDLE_NAME
	fi
done
