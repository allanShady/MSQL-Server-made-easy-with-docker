FROM mcr.microsoft.com/mssql/server:2017-latest AS build
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=inCentea16.

WORKDIR /tmp
COPY AdventureWorks2017.bak .
COPY restore-backup.sql .

RUN /opt/mssql/bin/sqlservr --accept-eula & sleep 10 \
&& /opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U SA -P "inCentea16." -i /tmp/restore-backup.sql \
&& pkill sqlservr

FROM mcr.microsoft.com/mssql/server:2019-latest AS release

ENV ACCEPT_EULA=Y

COPY --from=build /var/opt/mssql/data /var/opt/mssql/data