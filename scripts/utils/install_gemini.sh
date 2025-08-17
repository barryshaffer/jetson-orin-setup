#!/bin/bash
set -e

# Installing Node.js >= 20 and npm
echo "Installing Node.js 20.x and npm..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
echo "Node.js and npm installation completed."

# Installing Gemini CLI
echo "Installing Gemini CLI..."
sudo npm install -g @google/gemini-cli
echo "Gemini CLI installation completed."   

exit 0