FROM debian:bullseye-slim

LABEL repository="https://github.com/Automattic/FTP-Deploy-Action"
LABEL maintainer="Automattic <demitrious@automattic.com>"

RUN apt-get -qq update && apt-get -fqqu install git curl nodejs && rm -rf /var/lib/apt/lists/*
RUN curl https://raw.githubusercontent.com/git-ftp/git-ftp/1.6.0/git-ftp > /usr/local/bin/git-ftp && chmod 755 /usr/local/bin/git-ftp
