#!/usr/bin/env bash
# Wait for database to startup 
sleep 20
./opt/mssql-tools/bin/sqlcmd -S 192.168.70.75,1433 -U sa -P Nguyenmautuan0306 -d mcr.microsoft.com/azure-sql-edge -i create-database.sql