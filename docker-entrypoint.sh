#!/usr/bin/env bash
set -Eeo pipefail
sed -i "s|__API_URL__|${API_URL}|"  /usr/share/nginx/html/index.html
# envsubst < "src/index.env.html" > "src/index.html"
cat /usr/share/nginx/html/index.html
exec "$@"
