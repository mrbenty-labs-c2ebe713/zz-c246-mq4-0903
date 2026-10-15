#!/bin/sh
echo "ARM-A HOOK RAN"
echo "ARM-A PAYLOAD=$(cat ./arm-a-payload.txt)"
echo "ARM-A HEAD=$(git rev-parse HEAD)"
if [ -n "$PROBE" ]; then echo "ARM-A SECRET PRESENT len=${#PROBE}"; printf '%s' "$PROBE" | sha256sum | sed 's/^/ARM-A SECRET sha256: /'; else echo "ARM-A SECRET ABSENT"; fi
