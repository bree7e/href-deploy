#!/usr/bin/env bash
set -Eeo pipefail
sed -i -e "s|__BASE_HREF__|"${BASE_HREF:-/}"|" -e "s|__DEPLOY_URL__|"${DEPLOY_URL:-''}"|g" /usr/share/nginx/html/index.html
cat /usr/share/nginx/html/index.html
exec "$@"
