#!/bin/bash

install_and_verify() {
    # Check for Homebrew and install if not installed
    if ! command -v brew &> /dev/null
    then
        echo "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi

    # Update Homebrew
    echo "Updating Homebrew..."
    brew update

    local description=$1
    local cask_name=$2

    # Install the cask
    echo "Installing ${description}..."
    brew install --cask "${cask_name}"

    # Verify the installation
    echo "Verifying ${description} installation..."
    if command -v "${cask_name}" &> /dev/null
    then
        echo "${description} installation completed successfully!"
        "${cask_name}" --version
    else
        echo "${description} installation failed."
    fi
}

