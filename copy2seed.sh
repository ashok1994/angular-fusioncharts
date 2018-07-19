#!/bin/bash

# Build
npm run build

# Clean angular seed fusioncharts
rm -rf ../angular4-seed-fusioncharts/node_modules/angular2-fusioncharts/*

# Copy over items
rsync -av --progress ./dist/ ../angular4-seed-fusioncharts/node_modules/angular2-fusioncharts/ --exclude node_modules

