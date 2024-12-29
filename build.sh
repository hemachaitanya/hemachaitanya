#!/bin/bash

# Ensure the script stops on errors
set -e

# Accept the environment as a parameter
ENVIRONMENT=$1

# Validate input
if [ -z "$ENVIRONMENT" ]; then
  echo "Usage: ./build.sh [dev|qa|prod]"
  exit 1
fi

# Map the environment to the corresponding config file
CONFIG_FILE="config/${ENVIRONMENT}.env"

# Check if the configuration file exists
if [ ! -f "$CONFIG_FILE" ]; then
  echo "Configuration file $CONFIG_FILE not found!"
  exit 1
fi

# Load environment-specific variables
export $(cat $CONFIG_FILE | xargs)

# Example build process: Display loaded variables
echo "Building for environment: $ENVIRONMENT"
echo "Using API_URL=$API_URL and DB_CONNECTION=$DB_CONNECTION"

# Your actual build logic here (e.g., Docker, Maven, npm, etc.)
# Example for npm:
# npm install && npm run build

echo "Build process for $ENVIRONMENT completed successfully!"
