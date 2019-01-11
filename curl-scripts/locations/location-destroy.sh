#!/bin/bash

curl --include --request DELETE "http://localhost:4741/locations/${ID}"\
  --header "Authorization: Token token=${TOKEN}"
