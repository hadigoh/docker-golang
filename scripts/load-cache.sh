#! /bin/sh

set -e

if [ -z $CACHE_DIR ]; then 
  echo "CACHE_DIR not set"
  exit 1
fi

if [ -d $CACHE_DIR ]; then
  cp -r $CACHE_DIR/* /
  rm -rf $CACHE_DIR
fi
