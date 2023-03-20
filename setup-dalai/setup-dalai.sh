#!/bin/bash

# Install Python 3.10 or below
sudo apt-get update
sudo apt-get install python3.10

# Install Node.js 18 or higher
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install alpaca model
npx dalai alpaca install 7B

# Install llama model
npx dalai llama install 7B

# Install additional dependencies for model installation
sudo apt-get install build-essential python3-venv -y
# OR: sudo dnf install make automake gcc gcc-c++ kernel-devel python3-virtualenv -y

# Run web UI server
npx dalai serve

echo "Setup complete!"
