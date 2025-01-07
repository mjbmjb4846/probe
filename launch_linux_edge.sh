#!/bin/bash

# Close existing Edge instances
pkill -f msedge

# Wait a moment
sleep 2

# Launch Edge with disabled timer throttling and the HTML file
/opt/microsoft/msedge/msedge --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding file://$(pwd)/dmt346.html