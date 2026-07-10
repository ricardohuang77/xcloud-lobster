#!/bin/sh
set -e

if [ -n "$FEISHU_APP_SECRET" ]; then
  sed -i "s|\$FEISHU_APP_SECRET|$FEISHU_APP_SECRET|g" /root/.openclaw/openclaw.json
fi

PORT=${PORT:-8080}
exec openclaw gateway --port "$PORT"
