#!/bin/sh
# Exit immediately if a command exits with a non-zero status
set -e

psql <<QUERY
CREATE TABLE IF NOT EXISTS messages (
    id SERIAL PRIMARY KEY,
    text TEXT NOT NULL,
    added TIMESTAMP NOT NULL DEFAULT NOW()
);
QUERY

echo "Table 'messages' created (if it didn't already exist)."
