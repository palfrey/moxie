#!/bin/bash

for scadfile in "$@"
do
    echo "$scadfile"
    if [[ $scadfile = @(library/train_tracks_generator.scad) ]]; then
        continue
    fi
    ./pnpm openscad-format --force -i $scadfile
done
