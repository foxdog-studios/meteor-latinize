#!/usr/bin/env zsh

setopt ERR_EXIT
setopt NO_UNSET

sources=(
    'lib/latinize/latinize.js'
)

repo=$(realpath "$(dirname "$(realpath -- $0)")/..")
build_dir=$repo/build
rm --force --recursive --verbose $build_dir
mkdir --parents $build_dir
for source in $sources; do
    cp --verbose $source $build_dir
done

