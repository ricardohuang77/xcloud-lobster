#!/bin/sh
set -e

# Inject env vars into config
if [ -n "$FEISHU_APP_SECRET" ]; then
  sed -i "s|\$FEISHU_APP_SECRET|$FEISHU_APP_SECRET|g" /root/.openclaw/openclaw.json
fi

echo "=== Starting OpenClaw Gateway ==="
exec node /usr/local/lib/node_modules/openclaw/dist/index.js gateway --port 8080
