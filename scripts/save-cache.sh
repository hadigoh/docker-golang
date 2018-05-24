#! /bin/sh

set -e

CACHE_DIR="${CACHE_DIR:-$CI_PROJECT_DIR/.cache}"

mkdir -p $CACHE_DIR

for dir in $*; do
  cp -r --parents $dir $CACHE_DIR || true
done
