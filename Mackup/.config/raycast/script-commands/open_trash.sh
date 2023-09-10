#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Trash Directory
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🗑

echo "Opening"
cd $HOME/.Trash/
open .
