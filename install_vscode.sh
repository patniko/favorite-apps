#!/bin/bash

./install_brew.sh

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
brew install --cask visual-studio-code

# Verify the installation
echo "Verifying Visual Studio Code installation..."
if command -v code &> /dev/null
then
    echo "Visual Studio Code installation completed successfully!"
    code --version
else
    echo "Visual Studio Code installation failed."
fi

