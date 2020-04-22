#!/bin/sh
# Replace the API and APP keys below
# with the ones for your account

api_key="<DATADOG_API_KEY>"
app_key="<DATADOG_APPLICATION_KEY>"

curl -X DELETE "https://app.datadoghq.com/api/v1/logs/config/restriction_queries/<RESTRICTION_QUERY_ID>/roles" \
     -H "Content-Type: application/json" \
     -H "DD-API-KEY: ${api_key}" \
     -H "DD-APPLICATION-KEY: ${app_key}" \
     -d '{
         "data": {
             "type": "roles",
             "id": "<ROLE_ID>"
         }
     }'