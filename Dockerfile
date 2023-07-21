FROM debian:bullseye-slim

LABEL repository="https://github.com/Automattic/FTP-Deploy-Action"
LABEL maintainer="Automattic <support@automattic.com>"

RUN apt-get update && apt-get install -fqqy git curl nodejs && rm -rf /var/lib/apt/lists/*
RUN curl https://raw.githubusercontent.com/git-ftp/git-ftp/1.6.0/git-ftp > /usr/local/bin/git-ftp && chmod 755 /usr/local/bin/git-ftp

COPY dist/index.js /deploy.js
RUN chmod +x deploy.js

ENTRYPOINT ["node", "../../deploy.js"]
