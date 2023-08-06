#!/bin/bash
cd /home/container

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Create data directory, if it does not exist
mkdir -p /home/container/data

# Run the Server
${MODIFIED_STARTUP}