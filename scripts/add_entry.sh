#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Check for at least one argument
if [ -z "$1" ]; then
  echo "Usage: $0 \"some message text\""
  exit 1
fi

MESSAGE_TEXT="$1"

psql <<QUERY
INSERT INTO messages (text, added)
VALUES ('$1', NOW());
QUERY

echo "Inserted new message: '$MESSAGE_TEXT'"
