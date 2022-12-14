#!/usr/bin/bash

apt install imagemagick git nodejs ffmpeg libwebp mc nano
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt install --no-install-recommends yarn
rm -rf node_modules 
yarn
rm -rf session.json 
rm -rf store.json
npm start

echo "All dependencies have been installed, please run the command \"npm start\" to immediately start the script"
