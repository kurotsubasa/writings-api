#!/bin/bash

curl "http://localhost:4741/writings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "writing": {
      "name": "'"${NAME}"'",
      "genre": "'"${GENRE}"'",
      "completion_date": "'"${DATE}"'",
      "country_of_origin": "'"${ORIGIN}"'",
      "recommend": "'"${REC}"'",
      "author": "'"${AUTHOR}"'"
    }
  }'

echo
