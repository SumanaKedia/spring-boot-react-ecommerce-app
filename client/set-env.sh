#!/bin/sh

# Fetch the dynamic IP address of the instance
PUBLIC_IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)


# Check if the IP is fetched successfully
if [ -z "$PUBLIC_IP" ]; then
  # If not fetched, use localhost
  echo "Using localhost as the API base URL."
  export REACT_APP_API_BASE_URL="http://localhost:3000"
else
  # If fetched, use the dynamic IP
  echo "Using dynamic IP as the API base URL."
  export REACT_APP_API_BASE_URL="http://$PUBLIC_IP:3000"
fi

# Print the set value for debugging
echo "Set REACT_APP_API_BASE_URL=$REACT_APP_API_BASE_URL"

# Replace the placeholder in .env file
sed -i "s|REACT_APP_API_BASE_URL=.*|REACT_APP_API_BASE_URL=$REACT_APP_API_BASE_URL|g" .env
