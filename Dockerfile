FROM apokalyptik/wpcloudsftpdeployer:latest

LABEL repository="https://github.com/Automattic/FTP-Deploy-Action"
LABEL maintainer="Automattic <demitrious@automattic.com>"

COPY dist/index.js /deploy.js
RUN chmod +x deploy.js

ENTRYPOINT ["node", "../../deploy.js"]
