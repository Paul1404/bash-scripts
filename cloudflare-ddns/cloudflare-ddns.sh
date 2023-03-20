#!/bin/bash

# Cloudflare API credentials
CF_API_KEY="YOUR_CLOUDFLARE_API_KEY"
CF_API_EMAIL="YOUR_CLOUDFLARE_API_EMAIL"
ZONE_ID="YOUR_CLOUDFLARE_ZONE_ID"
RECORD_ID="YOUR_CLOUDFLARE_RECORD_ID"

# Get current IP address
IP=$(curl -s http://whatismyip.akamai.com/)

# Update A record
curl -s -X PUT "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$RECORD_ID" \
     -H "Content-Type: application/json" \
     -H "X-Auth-Key: $CF_API_KEY" \
     -H "X-Auth-Email: $CF_API_EMAIL" \
     --data "{\"type\":\"A\",\"name\":\"example.com\",\"content\":\"$IP\",\"ttl\":1,\"proxied\":false}"
