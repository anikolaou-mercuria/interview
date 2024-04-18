Always save these bash scripts using UNIX file encoding UTF-8. Don't use Windows. If you have edited the file check the encoding using Notepad++.

docker run --env "MSSQL_SA_PASSWORD=Password!1" --env "ACCEPT_EULA=Y" --env MSSQL_AGENT_ENABLED=True --network minio --name icts-refdata -p 1434:1433 -d icts-refdata
