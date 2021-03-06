# Gwetur [![Build Status](https://travis-ci.org/PierreZ/gwetur.svg?branch=master)](https://travis-ci.org/PierreZ/gwetur)

Progressive web app built to get data from your car and push them to a TimeSeries database called [Warp10](http://www.warp10.io/).

### Compatibility

Progressive web app can only connect to a BLE (Bluetooth 4.0) device. Make sure your OBD2 is Bluetooth 4 compliant.

### Setup

##### Prerequisites

Install [polymer-cli](https://github.com/Polymer/polymer-cli):

    npm install -g polymer-cli

### Start the development server

This command serves the app at `http://localhost:8080` and provides basic URL
routing for the app:

    polymer serve

### Build

This command performs HTML, CSS, and JS minification on the application
dependencies, and generates a service-worker.js file with code to pre-cache the
dependencies based on the entrypoint and fragments specified in `polymer.json`.
The minified files are output to the `build/unbundled` folder, and are suitable
for serving from a HTTP/2+Push compatible server.

In addition the command also creates a fallback `build/bundled` folder,
generated using fragment bundling, suitable for serving from non
H2/push-compatible servers or to clients that do not support H2/Push.

    polymer build

### Test the build

This command serves the minified version of the app in an unbundled state, as it would
be served by a push-compatible server:

    polymer serve build/unbundled

This command serves the minified version of the app generated using fragment bundling:

    polymer serve build/bundled
