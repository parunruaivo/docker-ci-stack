#!/bin/bash
set -e

gosu postgres psql -v ON_ERROR_STOP=1 --username postgres <<-EOSQL
    CREATE DATABASE sonar;
    CREATE USER sonar;
    GRANT ALL PRIVILEGES ON DATABASE sonar TO sonar;
EOSQL