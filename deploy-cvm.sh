#!/bin/bash

set -e

deployment_type="source-control"

echo ">> Import extensions"

for f in twx-ext/*.zip; do
    twx import $f
done

if [ "source-control" == "$deployment_type" ]; then

    echo ">> Upload entities as a ZIP file"
    twx import "./twx-src"
	
else

    echo ">> Import entities as an extension"

    #TODO

fi

