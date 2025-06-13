#!/bin/zsh
# dev-init.sh: Set up Python virtual environment and install dependencies

# Exit on error
set -e

# Create venv if it doesn't exist
if [ ! -d ".venv" ]; then
  python3 -m venv .venv
  echo "Created virtual environment in .venv"
else
  echo "Virtual environment already exists."
fi

# Activate venv
source .venv/bin/activate

echo "Installing dependencies from requirements.txt..."
pip install --upgrade pip
if [ -f requirements.txt ]; then
  pip install -r requirements.txt
else
  echo "requirements.txt not found. Please create it with your dependencies."
fi

echo "Development environment setup complete."
