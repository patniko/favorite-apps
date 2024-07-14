#!/bin/bash

./install_brew.sh

# Install Notion
echo "Installing Notion..."
brew install --cask notion

# Verify the installation
echo "Verifying Notion installation..."
if command -v notion &> /dev/null
then
    echo "Notion installation completed successfully!"
else
    echo "Notion installation failed."
fi
