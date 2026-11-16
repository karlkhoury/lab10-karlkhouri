#!/bin/bash
set -e
DEPLOY_DIR="${DEPLOY_DIR:-$HOME/deployments/python-ci-cd}"
mkdir -p "$DEPLOY_DIR"
cp app.py requirements.txt "$DEPLOY_DIR"/
cd "$DEPLOY_DIR"
python app.py
echo "Application deployed to $DEPLOY_DIR"
