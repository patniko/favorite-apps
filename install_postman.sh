#!/bin/bash

./install_brew.sh

# Install Postman
echo "Installing Postman..."
brew install --cask postman

# Verify the installation
echo "Verifying Postman installation..."
if command -v code &> /dev/null
then
    echo "Postman installation completed successfully!"
    code --version
else
    echo "Postman installation failed."
fi

