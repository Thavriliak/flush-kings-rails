#!/bin/bash

# TOKEN=""" AREA="Federal Hill" sh curl-scripts/locations/brand-create.sh

curl --include --request POST "http://localhost:4741/locations" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "location": {
    "area": "'"${AREA}"'"
  }
}'
