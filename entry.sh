#!/bin/sh
set -e

if [ -n "$FEISHU_APP_SECRET" ]; then
  sed -i "s|\$FEISHU_APP_SECRET|$FEISHU_APP_SECRET|g" /root/.openclaw/openclaw.json
fi

PORT=${PORT:-8080}
exec node /usr/local/lib/node_modules/openclaw/dist/index.js gateway --port "$PORT" --bind auto
