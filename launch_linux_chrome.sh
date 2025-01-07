#!/bin/bash

# Close existing Chrome instances
pkill -f chrome

# Wait a moment
sleep 2

# Launch Chrome with disabled timer throttling and the HTML file
google-chrome --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding file://$(pwd)/dmt346.html