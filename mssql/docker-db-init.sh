#!/bin/bash
echo "waiting 30s for the SQL Server to come up..."
sleep 30
echo "running set up script..."
/opt/mssql-tools/bin/sqlcmd -S "localhost" -U sa -P "${MSSQL_SA_PASSWORD}" -d master -i /opt/mssql-tools/bin/db-setup.sql
