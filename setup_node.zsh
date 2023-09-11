#!/bin/zsh

echo "\n=== Installing Node.js ===\n"

if exists node; then
  echo "Node already exists. Skipping installation."
else
  echo "Node doesn't exist. Installing Node."
  nvm install --lts
  sudo chown -R 501:20 "$HOME/.npm"
  nvm install-latest-npm
fi

echo "\n=== Installing global packages. It requires sudo permissions, so you may be asked to enter a password ===\n"
sudo npm install -g ts-node pnpm bun @nestjs/cli

echo "\n=== Done ===\n"
