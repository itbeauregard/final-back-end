#!/bin/bash

API="${API_ORIGIN:-https://monument-app.herokuapp.com}"
URL_PATH="/user_answers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user_answer": {
      "user_id": "'"${USERID}"'",
      "question_id": "'"${QUESTIONID}"'",
      "complete": "'"${COMPLETE}"'"
    }
  }'

echo
