#!/bin/bash

API="${API_ORIGIN:-https://monument-app.herokuapp.com}"
URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "name": "'"${NAME}"'",
      "username": "'"${USER}"'",
      "password": "'"${PW}"'",
      "password_confirmation": "'"${PW}"'"
    }
  }'

echo
