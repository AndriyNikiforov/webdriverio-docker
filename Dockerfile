FROM blueimp/wdio

RUN apk update 
RUN apkt --no-cache add chromium \
    firefox-esr \
    git

RUN npm install -g @wdio/cli

