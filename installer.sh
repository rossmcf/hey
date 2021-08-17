#!/bin/bash

echo "Installing Hey!"
OSTYPE=$(uname)
if [[ "$OSTYPE" == "Darwin"* ]]; then
	echo "OS X detected. Downloading binary..."
	wget --no-check-certificate https://github.com/rossmcf/hey/releases/download/v1.0.0/hey_darwin
	mv hey_darwin hey
else
	echo "Linux detected. Downloading binary..."
	wget --no-check-certificate https://github.com/rossmcf/hey/releases/download/v1.0.0/hey_linux
	mv hey_linux hey
fi
chmod +x hey
