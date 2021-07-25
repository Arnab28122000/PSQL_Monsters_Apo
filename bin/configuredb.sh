#!/bin/bash

export PGPASSWORD='Ab28122000'

database = "monstersdb"

echo "Configuring database: $database"

dropdb -U node_user monstersdb
createdb -U node_user monstersdb

psql -U node_user monstersdb < ./sql/monsters.sql

echo "$database configures"