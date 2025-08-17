#!/bin/bash
set -e

# Installing nodejs and npm
echo "Installing Node.js and npm..."
sudo apt-get update
sudo apt-get install -y nodejs npm
echo "Node.js and npm installation completed."
# Installing Gemini CLI
echo "Installing Gemini CLI..."
npm install -g @google/gemini-cli
echo "Gemini CLI installation completed."   

exit 0