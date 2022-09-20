#!/bin/sh
set -e

g_flag=false

while getopts 'g' flag; do
  case "${flag}" in
    g) g_flag=true ;;
    *) exit 1 ;;
  esac
done

if [ ! -d "build" ] ; then
  mkdir build
fi

echo "Copying configuration files..."
cp -rf server build/server

cp -rf pack/config build/server
#cp -rf pack/journeymap build/server
#cp -rf pack/kubejs build/server

if [ "$g_flag" = true ] ; then
    echo "Generating Server instance zip..."
    cd build/server
    zip -rq ../SimpleImprovement-Server-$PACK_VERSION.zip *
fi

echo "Complete"
