FROM node:22-alpine

RUN apk add --no-cache gettext
RUN npm install -g openclaw@2026.7.1-beta.2

RUN mkdir -p /root/.openclaw/skills

COPY openclaw.json /root/.openclaw/openclaw.json
COPY skills/ /root/.openclaw/skills/
COPY entry.sh /entry.sh

RUN chmod +x /entry.sh

ENV PORT=8080

EXPOSE 8080

CMD ["/entry.sh"]
