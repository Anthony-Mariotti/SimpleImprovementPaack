#!/bin/sh

# Read the settings.
. ./LaunchSettings.sh

run_packwiz() {
    java -jar ${PACKWIZ_BOOT} -g -s server ${PACK_TOML}
}

# Start the server.
run_server() {
    java -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${SERVER_JAR} nogui
}

echo "Simple Improvement {{ TTP.VERSION }}"
echo "Checking for updates..."
run_packwiz

echo "Startin Simple Improvement Server..."
run_server
