#!/bin/bash

curl --include --request DELETE "http://localhost:4741/fridges/${ID}" \
--header "Authorization: Token token=${TOKEN}"
