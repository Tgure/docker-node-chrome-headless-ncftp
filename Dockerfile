FROM node:lts-alpine

# Install Google Chrome yarn ncftp
RUN apt-get update && apt-get install -y \
    curl -sSL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list \
    && apt-get update && apt-get install -y ncftp google-chrome-stable yarn --no-install-recommends && \
    npm i -g --unsafe-perm apidoc
