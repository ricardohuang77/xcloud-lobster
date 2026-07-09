#!/bin/sh
set -e

# Inject env vars into config
if [ -n "$FEISHU_APP_SECRET" ]; then
  sed -i "s|\$FEISHU_APP_SECRET|$FEISHU_APP_SECRET|g" /root/.openclaw/openclaw.json
fi

PORT=${PORT:-8080}
echo "=== Starting OpenClaw Gateway on port $PORT ==="
exec openclaw gateway --port "$PORT"
