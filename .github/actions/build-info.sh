#!/bin/bash
# usage: build-info.sh <job name/id> <build number/id>

if [[ $# -ne 2 ]]; then
		echo 'Usage: build-info.sh <job name/id> <build number/id>'
			exit 1
fi
echo -e "Source: $(git describe 2> /dev/null || git rev-parse --short HEAD)\nJob: $1\nBuild #: $2\nTime: $(date '+%Y-%m-%d %H:%M:%S')"
