#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
sudo stop example_app
cd circleci-pipeline
npm install
pm2 start ./bin/www --name example_app