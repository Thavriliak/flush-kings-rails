#!/bin/bash

# ID="5" TOKEN="BAhJIiVmYzFkZWQyN2MyZjY2MGUzOGRlZjRiZTQwNDlhNTQ5MQY6BkVG--5b039e3e17cdfc3ba309b3f8b4d83ad937a95517" sh curl-scripts/locations/location-show.sh

curl --include --request GET "http://localhost:4741/locations/${ID}"\
  --header "Authorization: Token token=${TOKEN}"
