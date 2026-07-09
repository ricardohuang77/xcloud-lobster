#!/bin/sh

# Substitute env vars in openclaw.json
cp /root/.openclaw/openclaw.json /root/.openclaw/openclaw.json.template
envsubst < /root/.openclaw/openclaw.json.template > /root/.openclaw/openclaw.json

# Start gateway
exec node /usr/local/lib/node_modules/openclaw/dist/index.js gateway --port 8080
