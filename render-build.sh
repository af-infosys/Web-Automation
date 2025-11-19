#!/usr/bin/env bash
set -e

echo "Installing dependencies..."
npm install

echo "Preparing Puppeteer cache directory..."
mkdir -p /opt/render/project/src/.cache/puppeteer

echo "Downloading Chromium..."
PUPPETEER_CACHE_DIR="/opt/render/project/src/.cache/puppeteer" \
node node_modules/puppeteer/install.mjs