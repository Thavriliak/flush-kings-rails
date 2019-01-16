#!/bin/bash

# TOKEN="BAhJIiU5ZDE4NzZlY2I5MjU2NGYxZTVkOTJlY2UyNmRjNGMyYQY6BkVG--eed0eeee46fdc94ee7a50be868afe3dc73f3582e" AREA="Olneyville" sh curl-scripts/locations/location-create.sh

curl --include --request POST "http://localhost:4741/locations" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "location": {
    "area": "'"${AREA}"'"
  }
}'
