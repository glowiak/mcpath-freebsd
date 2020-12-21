#!/bin/sh
echo "Installing non-premium/mineshafter path..."
rm /usr/local/share/minecraft-client/Minecraft.jar
curl -L -o /usr/local/share/minecraft-client/Minecraft.jar https://mineshafter.info/files/jars/Mineshafter-launcher.jar
echo "Installing forge and optifine support..."
rm /usr/local/bin/minecraft-client
curl -L -o /usr/local/bin/minecraft-client https://raw.githubusercontent.com/glowiak/mcpath-freebsd/master/forge-path.sh
echo "Path install completed!"
echo "Be sure to backup and delete .minecraft dir, rerun launcher,"
echo "set java path to '/usr/local/share/minecraft-client/minecraft-runtime'"
echo "run Minecraft, close it and move .minecraft backup's content to /home/username/minecraft dir."
