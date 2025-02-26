#!/bin/bash
set -e

# psql-pub が起動するまで待機
until pg_isready -h psql-pub -p 5432 -U default; do
  echo "Waiting for psql-pub..."
  sleep 1
done

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  SELECT pg_create_physical_replication_slot('sub_slot');
EOSQL

pg_basebackup -h psql-pub -U default -p 5432 -D /var/lib/postgresql/data -P -Xs -R -v -w
