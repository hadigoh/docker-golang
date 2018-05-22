#! /bin/sh

set -e

if [ -z "$GO_PROJECT_DIR" ]; then
  echo "GO_PROJECT_DIR not set"
  exit 1
elif [ -z "$CI_PROJECT_DIR" ]; then 
  echo "CI_PROJECT_DIR not set"
  exit 1
fi

mkdir -p $GO_PROJECT_DIR
mv $CI_PROJECT_DIR/* $GO_PROJECT_DIR
mv $CI_PROJECT_DIR/.[!.]* $GO_PROJECT_DIR

