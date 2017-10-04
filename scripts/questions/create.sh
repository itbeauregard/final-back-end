#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/questions"
LOCATION='Fox Point'
ASK='What is that in the sky?'
FIRST='A bird'
SECOND='A plane'
THIRD='A flying squirrel'
FOURTH='A toaster'
FIFTH='Superman'
CORRECT='A toaster'

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "question": {
      "location": "'"${LOCATION}"'",
      "ask": "'"${ASK}"'",
      "first_choice": "'"${FIRST}"'",
      "second_choice": "'"${SECOND}"'",
      "third_choice": "'"${THIRD}"'",
      "fourth_choice": "'"${FOURTH}"'",
      "fifth_choice": "'"${FIFTH}"'",
      "correct_choice": "'"${CORRECT}"'"
    }
  }'

echo
