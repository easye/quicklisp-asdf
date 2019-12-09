#!/usr/bin/env bash

DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

dest=$HOME/.config/common-lisp/source-registry.conf.d

mkdir -p $dest

# Locate the root of the source repository
root=${TRAVIS_BUILD_DIR}

# TODO figure out how to sanely address paths
# TODO don't spam ASDF
echo "(:tree \"${root}\")" > ${dest}/quicklisp-asdf.conf
echo "(:tree \"${root}\")" > ${dest}/custodes.conf
echo "(:tree \"${root}\")" > ${dest}/warno.conf

