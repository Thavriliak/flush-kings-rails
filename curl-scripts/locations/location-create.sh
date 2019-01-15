#!/bin/bash

# TOKEN="BAhJIiUxM2YzYTAwMDlkOThiOGM4OGJmM2IxOTQ4YTBiZGY5OAY6BkVG--8bec190d8e02a12819746b07ca3165bf67e0b608" AREA="Federal Hill" sh curl-scripts/locations/location-create.sh

curl --include --request POST "http://localhost:4741/locations" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "location": {
    "area": "'"${AREA}"'"
  }
}'
