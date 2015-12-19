#!/bin/bash

if [ -n -e config ];
  ln -s /opt/minecraft/config config
fi

if [ -n -e mods ];
  ln -s /opt/minecraft/mods mods
fi

if [ -n -e libraries ];
  ln -s /opt/minecraft/libraries libraries
fi

if [ -n -e scripts ];
  ln -s /opt/minecraft/scripts scripts
fi

if [ -n -e eula.txt ];
  cp data/eula.txt .
fi

java -server -Xmx${SERVER_MAXHEAP} -Xms${SERVER_MINHEAP} -XX:+UseG1GC -jar ../forge*.jar ${SERVER_OPTS}
