#!/bin/bash

# Set up GitHub token and artifact name
GITHUB_TOKEN=$1
ARTIFACT_NAME="my-artifact"

# Install GitHub CLI
echo "Installing GitHub CLI..."
curl -sSL https://cli.github.com/install.sh | sudo bash

# Authenticate with GitHub CLI
echo "Authenticating with GitHub..."
echo "$GITHUB_TOKEN" | gh auth login --with-token

# Upload artifact
echo "Uploading artifact..."
gh run upload $ARTIFACT_NAME --token $GITHUB_TOKEN

echo "Artifact uploaded successfully!"
