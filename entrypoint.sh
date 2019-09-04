#!/bin/sh

set -e

# prune containers to avoid error
docker container prune -f

set -- mon-put-instance-data "$@"

exec "$@"