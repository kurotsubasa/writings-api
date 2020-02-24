curl "http://localhost:4741/writings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "writing": {
      "user_id": "'"${USER}"'",
      "writing_id": "'"${WRITE}"'"
    }
  }'

echo
