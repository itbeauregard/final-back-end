#!/bin/bash

API="${API_ORIGIN:-https://monument-app.herokuapp.com}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "username": "'"${USER}"'",
      "password": "'"${PW}"'"
    }
  }'

echo
