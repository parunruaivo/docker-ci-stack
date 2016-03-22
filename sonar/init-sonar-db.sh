#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER sonar;
    CREATE DATABASE sonar;
    GRANT ALL PRIVILEGES ON DATABASE sonar TO sonar;
EOSQL