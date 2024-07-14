#!/bin/bash

./install_brew.sh

# Install Redis Insight
echo "Installing Redis Insight..."
brew install --cask redisinsight

# Verify the installation
echo "Verifying Redis Insight installation..."
if command -v code &> /dev/null
then
    echo "Redis Insight installation completed successfully!"
    code --version
else
    echo "Redis Insight installation failed."
fi

