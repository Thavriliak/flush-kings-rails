#!/bin/bash

# TOKEN="BAhJIiVmNzA5NmM5OTMxNjM3MjA4MmEzNmM2ZGJlYjc5NTVjMAY6BkVG--08c8ad66ea74200b29b70ae3375d82b54f2e9f35" LOCATION=1 NAME_OF_ESTABLISHMENT="Dunkin Donuts" CLEANLINESS="Very clean, very well put together" SMELL="Smelled like a donut" NUM_OF_TOILETS=2 HANDI_ACCESSIBLE="true" BABY_CARE="true" HOURS="6am-9pm" USER=3 sh curl-scripts/restrooms/restroom-create.sh

curl --include --request POST "http://localhost:4741/restrooms" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "restroom": {
    "location_id": "'"${LOCATION}"'",
    "name_of_establishment": "'"${NAME_OF_ESTABLISHMENT}"'",
    "cleaniness": "'"${CLEANLINESS}"'",
    "smell": "'"${SMELL}"'",
    "number_of_toilets": "'"${NUM_OF_TOILETS}"'",
    "handicap_accessible": "'"${HANDI_ACCESSIBLE}"'",
    "baby_care": "'"${BABY_CARE}"'",
    "hours": "'"${HOURS}"'",
    "user_id": "'"${USER}"'"
  }
}'