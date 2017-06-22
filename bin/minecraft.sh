#!/bin/bash

curl -o vendor/minecraft_server.jar "https://s3.amazonaws.com/Minecraft.Download/versions/1.12/minecraft_server.1.12.jar"
# Create server config
echo "server-port=25566" > /app/server.properties

# Sync initial files
ruby bin/sync.rb init

# Print logs to STDOUT
touch server.log
nice tail -f server.log &

# Run minecraft
java -Xmx1024M -Xms1024M -jar vendor/minecraft_server.jar nogui
