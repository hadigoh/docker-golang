#! /bin/sh

set -e

CACHE_DIR="${CACHE_DIR:-$CI_PROJECT_DIR/.cache}"

if [ -d $CACHE_DIR ]; then
  cp -r $CACHE_DIR/* /
  rm -rf $CACHE_DIR
fi
