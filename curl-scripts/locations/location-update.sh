#!/bin/bash

curl --include --request PATCH "http://localhost:4741/locations" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "location": {
    "area": "'"${AREA}"'"
  }
}'
