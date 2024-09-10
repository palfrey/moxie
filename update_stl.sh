#!/bin/bash

set -eux -o pipefail

for scadfile in tracks/*.scad; do
    stlfile=${scadfile/.scad/.stl}
    if [ "$stlfile" -ot "$scadfile" ]; then
        # https://hub.docker.com/r/openscad/openscad/tags
        # See also https://github.com/openscad/openscad/issues/4931 about predictability
        docker run --rm -v $(pwd):/openscad openscad/openscad:dev.2024-09-09 openscad -o $stlfile --export-format=asciistl --enable=predictible-output $scadfile
    fi
done