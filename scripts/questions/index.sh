#!/bin/bash

API="${API_ORIGIN:-https://monument-app.herokuapp.com}"
URL_PATH="/questions"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
