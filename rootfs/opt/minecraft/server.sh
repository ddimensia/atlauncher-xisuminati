#!/bin/bash

if [ ! -e config ]; then
  ln -s /opt/minecraft/config config
fi

if [ ! -e mods ]; then
  ln -s /opt/minecraft/mods mods
fi

if [ ! -e libraries ]; then
  ln -s /opt/minecraft/libraries libraries
fi

if [ ! -e scripts ]; then
  ln -s /opt/minecraft/scripts scripts
fi

if [ ! -e eula.txt ]; then
  cp /opt/minecraft/eula.txt .
fi

java -server -Xmx${SERVER_MAXHEAP} -Xms${SERVER_MINHEAP} -XX:+UseG1GC -jar ../forge*.jar ${SERVER_OPTS}
