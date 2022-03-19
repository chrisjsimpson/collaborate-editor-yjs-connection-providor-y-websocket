#!/bin/sh

set -x
cd /usr/src/app
PORT=1234 YPERSISTENCE=./dbDir node ./node_modules/y-websocket/bin/server.js

