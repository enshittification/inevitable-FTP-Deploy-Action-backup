FROM debian:bullseye-slim

LABEL repository="https://github.com/Automattic/FTP-Deploy-Action"
LABEL maintainer="Automattic <support@automattic.com>"


RUN apt-get update && apt-get install -fqqy git-ftp nodejs && rm -rf /var/lib/apt/lists/*

COPY dist/index.js /deploy.js
RUN chmod +x deploy.js

ENTRYPOINT ["node", "../../deploy.js"]
