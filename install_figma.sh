#!/bin/bash

./install_brew.sh

# Install Figma
echo "Installing Figma..."
brew install --cask figma

# Verify the installation
echo "Verifying Figma installation..."
if command -v code &> /dev/null
then
    echo "Figma installation completed successfully!"
    code --version
else
    echo "Figma installation failed."
fi

