#!/usr/bin/env zsh

setopt ERR_EXIT
setopt NO_UNSET

repo=$(realpath "$(dirname "$(realpath -- $0)")/..")

src=lib/latinize/latinize.js
dst=$repo/build/$src:t

mkdir --parents --verbose $dst:h
rm --force --recursive --verbose $dst
cp --verbose $src $dst
patch $dst < $repo/${src:t}.patch

