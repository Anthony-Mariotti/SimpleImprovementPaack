# Don't edit these values unless you know what you are doing.
export PACK_TOML="https://raw.githubusercontent.com/Anthony-Mariotti/SimpleImprovementPack/main/pack/pack.toml"
export PACKWIZ_BOOT="packwiz-installer-bootstrap.jar"
export SERVER_JAR="fabric-server-mc.1.19-loader.0.14.9-launcher.0.11.0.jar"

# You can edit these values if you wish.
export MIN_RAM="1024M"
export MAX_RAM="6144M"
export JAVA_PARAMETERS="-XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dfml.readTimeout=180"
