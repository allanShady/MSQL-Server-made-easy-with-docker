FROM mcr.microsoft.com/mssql/server:2017-latest AS build
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=$up3rSekRetPW123!

WORKDIR /tmp
COPY AdventureWorksLT2017.bak .
COPY restore-backup.sql .

RUN /opt/mssql/bin/sqlservr --accept-eula & sleep 100 \
&& /opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U SA -P "$up3rSekRetPW123!" -i /tmp/restore-backup.sql \
&& pkill sqlservr

FROM mcr.microsoft.com/mssql/server:2017-latest AS release

ENV ACCEPT_EULA=Y

COPY --from=build /var/opt/mssql/data /var/opt/mssql/data