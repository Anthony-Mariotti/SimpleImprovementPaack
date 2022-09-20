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
cp -rf multimc build/multimc

cp -rf pack/config build/multimc/.minecraft
#cp -rf pack/journeymap build/multimc/.minecraft
#cp -rf pack/kubejs build/multimc/.minecraft

if [ "$g_flag" = true ] ; then
    echo "Generating MultiMC instance zip..."
    cd build/multimc
    zip -rq ../SimpleImprovement-MultiMC-$PACK_VERSION.zip * .minecraft/*
fi

echo "Complete"
