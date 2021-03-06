#!/bin/sh
export JAVA_HOME=JAVA_HOME

# minecraft-client launcher. Forge and optifine support added with path.

# The first time warn the user to set the runtime executable in place of java
if [ ! -e "${HOME}/minecraft/notified-runtime" ] ; then
   if [ ! -d "${HOME}/minecraft" ] ; then
      mkdir ${HOME}/minecraft
   fi
   touch ${HOME}/minecraft/notified-runtime 2>/dev/null

   # No .minecraft dir, lets display the first time notification
   javac -d /tmp /usr/local/share/minecraft-client/Notifier.java
   cd /tmp
   # Run this as a background task, so that it appears over the launcher
   ( sleep 3; java Notifier ; rm Notifier*.class ) &
fi

exec ${JAVA_HOME}/bin/java -Djava.nio.file.spi.DefaultFileSystemProvider=sun.nio.fs.BsdFileSystemProvider \
 -Dos.name=Linux -jar /usr/local/share/minecraft-client/Minecraft.jar

