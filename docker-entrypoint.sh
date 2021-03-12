#!/usr/bin/env bash
set -Eeo pipefail
sed -i "s|__API_URL__|${__API_URL__}|"  /usr/share/nginx/html/index.html
exec "$@"
