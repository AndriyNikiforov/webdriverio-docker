FROM alpine:3.12

RUN apk --no-cache add \
  nodejs \
  npm \
  ffmpeg \
   firefox-esr \
  chromium \
  git \
  udev \
  ttf-freefont \
  chromium-chromedriver 

RUN git --version
RUN npm install -g npm@latest 

# Clean up obsolete files:
RUN rm -rf \
  /tmp/* \
  /root/.npm

RUN npm install -g @wdio/cli
