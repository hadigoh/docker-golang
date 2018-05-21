#! /bin/sh

set -e

if [ -z $CACHE_DIR ]; then 
  echo "CACHE_DIR not set"
  exit 1
fi

mkdir -p $CACHE_DIR

for dir in $*; do
  cp -r --parents $dir $CACHE_DIR
done
