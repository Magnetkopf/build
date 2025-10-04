#!/bin/sh

OWNER="kovidgoyal"
REPO="calibre"
LATEST_JSON=$(wget -qO- "https://api.github.com/repos/$OWNER/$REPO/releases/latest")

#Parse tag_name
VERSION=$(echo "$LATEST_JSON" | sed -n 's/.*"tag_name": *"\([^"]*\)".*/\1/p')
VER_NO_V=${VERSION#v}
URL="https://github.com/$OWNER/$REPO/releases/download/$VERSION/calibre-$VER_NO_V-x86_64.txz"

echo "Downloading $URL ..."
wget "$URL" -O "calibre-$VER_NO_V-x86_64.txz"

echo "Extracting calibre-$VER_NO_V-x86_64.txz ..."
mkdir -p ./calibre
tar -xJf "calibre-$VER_NO_V-x86_64.txz" -C ./calibre
