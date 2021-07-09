#!/bin/bash
cd $(dirname $0)
cd ..
[ -z "$1" ] && echo "Usage: $0 stack" && pulumi stack ls && exit 1
pulumi stack init ${1:-dev}
pulumi up --yes
