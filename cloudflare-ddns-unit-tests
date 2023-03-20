#!/bin/bash

# Cloudflare API credentials
CF_API_KEY="YOUR_CLOUDFLARE_API_KEY"
CF_API_EMAIL="YOUR_CLOUDFLARE_API_EMAIL"
ZONE_ID="YOUR_CLOUDFLARE_ZONE_ID"
RECORD_ID="YOUR_CLOUDFLARE_RECORD_ID"

# Test 1: Check if script updates the A record with the current IP address
IP=$(curl -s http://whatismyip.akamai.com/)
./update-cloudflare-a-record.sh
RECORD_IP=$(dig +short example.com)
if [[ "$IP" != "$RECORD_IP" ]]; then
  echo "Test 1 failed: A record was not updated with current IP address"
  exit 1
fi

# Test 2: Check if script exits with error when Cloudflare API credentials are invalid
CF_API_KEY="INVALID_API_KEY"
./update-cloudflare-a-record.sh
if [[ $? -eq 0 ]]; then
  echo "Test 2 failed: Script did not exit with error when API key was invalid"
  exit 1
fi

# Test 3: Check if script exits with error when record ID is invalid
RECORD_ID="INVALID_RECORD_ID"
./update-cloudflare-a-record.sh
if [[ $? -eq 0 ]]; then
  echo "Test 3 failed: Script did not exit with error when record ID was invalid"
  exit 1
fi

# Test 4: Check if script exits with error when domain name is invalid
DOMAIN_NAME="INVALID_DOMAIN_NAME"
./update-cloudflare-a-record.sh
if [[ $? -eq 0 ]]; then
  echo "Test 4 failed: Script did not exit with error when domain name was invalid"
  exit 1
fi

# All tests passed
echo "All tests passed"
exit 0
