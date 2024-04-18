FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

COPY docker-entrypoint.sh /usr/src/app/entrypoint.sh
COPY docker-db-init.sh /usr/src/app/init.sh
COPY db-setup.sql /opt/mssql-tools/bin/db-setup.sql

RUN chmod +x /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/init.sh

WORKDIR /usr/src/app

CMD /bin/bash ./entrypoint.sh
