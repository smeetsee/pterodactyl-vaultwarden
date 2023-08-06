#! /bin/sh

# Create the data directory if it does not exist yet
mkdir -p /home/container/data

# Then, run the server as is done normally.
ROCKET_PORT=$SERVER_PORT /start.sh