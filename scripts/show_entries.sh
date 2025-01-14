#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

psql <<QUERY
SELECT id, 
       text, 
       added
FROM messages 
ORDER BY added DESC;
QUERY
