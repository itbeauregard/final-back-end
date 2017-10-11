#!/bin/bash

API="${API_ORIGIN:-https://monument-app.herokuapp.com}"
URL_PATH="/questions"
LOCATION='Fox Point'
ASK="In the song 'Single Ladies', what does Beyonce urge the single ladies to do?"
FIRST='Pay your telephone bills'
SECOND='Put everything you own in a box to the left'
THIRD='Put your freakum dress on'
FOURTH='Put your feet up'
FIFTH='Put your hands up'
CORRECT='Put your hands up'

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
