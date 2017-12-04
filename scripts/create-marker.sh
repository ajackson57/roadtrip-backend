#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/markers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "marker": {
      "name": "'"${NAME}"'",
      "description": "'"${DESC}"'",
      "lng": "'"${LNG}"'",
      "lat": "'"${LAT}"'",
      "image_url": "'"${IMG}"'",
      "poi_url": "'"${POI}"'",
      "trip": "'"${ID}"'",
    }
  }'

echo
