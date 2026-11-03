#!/bin/bash
# Build script for sabdhagiri.github.io
# This script makes the project environment self-contained for local development.

# 1. Create a vendor directory for local gems
mkdir -p vendor/bundle

# 2. Run bundle install using the Gemfile to install only required dependencies locally
echo "--- Installing dependencies locally using Bundler ---"
bundle install --gemfile=Gemfile --path vendor/bundle

# Check if installation was successful
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install Jekyll dependencies. Check Gemfile and network access."
    exit 1
fi

echo "--- Dependencies installed successfully. ---"

# 3. Run Jekyll serve command using the local vendor bundle path
echo "--- Starting Jekyll local web server (Ctrl+C to stop) ---"
# We use the full path to the jekyll executable within the vendor bundle
# Setting the working directory to ensure paths are correct.
exec bundle exec jekyll serve --host 0.0.0.0 --port 4000
