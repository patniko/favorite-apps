#!/bin/bash

# Install NVM
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

# Add NVM configuration to .bash_profile
echo "Adding NVM configuration to .bash_profile..."
echo -e '\n# NVM Configuration\nexport NVM_DIR="$HOME/.nvm"\n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"\n[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"\n' >> ~/.bash_profile

# Source .bash_profile to apply changes
echo "Sourcing .bash_profile to apply changes..."
source ~/.bash_profile

# Verify NVM installation
echo "Verifying NVM installation..."
if command -v nvm &> /dev/null
then
    echo "NVM installation completed successfully!"
    nvm --version
else
    echo "NVM installation failed."
fi
