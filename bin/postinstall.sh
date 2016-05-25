#!/bin/bash

# Set Minecraft version
MC_VERSION="${MC_VERSION:-1.9}"


# Download Minecraft
curl -o vendor/minecraft_server.jar "https://s3.amazonaws.com/Minecraft.Download/versions/1.9.4/minecraft_server.1.9.4.jar"
