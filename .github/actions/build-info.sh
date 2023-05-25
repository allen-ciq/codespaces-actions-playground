#!/bin/bash

echo -e BUILDINFO=Source: $(git describe 2> /dev/null || git rev-parse --short HEAD)\nJob: '${{ github.workflow }}'\nBuild \#: '${{ github.run_number }}'\nTime: $(printf '%(%Y-%m-%d %H:%M:%S)T\n')
