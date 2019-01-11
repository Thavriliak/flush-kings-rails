#!/bin/bash

curl --include --request GET 'http://localhost:4741/locations'\
  --header "Authorization: Token token=${TOKEN}" \
