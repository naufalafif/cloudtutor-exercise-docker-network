#!/bin/bash


# Call the API endpoint
response=$(curl -s http://localhost:4444)

# Check if the status attribute is present and its value is "success"
if [[ $(echo $response | grep -o '"status":"success"') != '"status":"success"' ]]; then
  echo "Container belum terhubung"
  exit 1
fi

# API returned success, so do something here
echo "OK"