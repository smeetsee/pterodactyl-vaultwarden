#!/bin/bash

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Create data directory, if it does not exist
mkdir -p /home/container/data

# Make the server run on the allocated port
export ROCKET_PORT=$SERVER_PORT

# Run the Server in the background
${MODIFIED_STARTUP} &

# Allow running shell commands
cd /home/container
bash