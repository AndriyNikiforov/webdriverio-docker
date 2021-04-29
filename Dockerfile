FROM blueimp/wdio

USER root

RUN apk --no-cache add \
  firefox-esr \
  chromium \
  git \
  unzip \
  fontconfig \
  xvfb \
  imagemagick

RUN git --version

# Clean up obsolete files:
RUN rm -rf \
  /tmp/* \
  /root/.npm

RUN npm install -g @wdio/cli
