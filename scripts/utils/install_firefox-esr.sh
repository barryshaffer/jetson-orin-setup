#!bin/bash

set -e

# Add the Mozilla repository
echo "Adding Mozilla repository..."
sudo add-apt-repository -y ppa:mozillateam/ppa

# Update package lists
echo "Updating package list..."
sudo apt update

# Install Firefox ESR
echo "Installing Firefox ESR..."
sudo apt install -y firefox-esr

echo "Firefox ESR installation completed."

exit 0
