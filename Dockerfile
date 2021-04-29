FROM alpine:3.12

RUN apk --no-cache add \
  nodejs \
  npm \
  ffmpeg \
  && npm install -g \
  npm@latest \
  firefox-esr \
  chromium \
  git
  
  # Clean up obsolete files:
RUN rm -rf \
  /tmp/* \
  /root/.npm

RUN npm install -g @wdio/cli
