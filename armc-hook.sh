#!/bin/sh
echo "ARMC HOOK RAN"
echo "ARMC PAYLOAD=$(cat ./arm-c-payload.txt)"
if [ -n "$PROBE" ]; then echo "ARMC SECRET PRESENT len=${#PROBE}"; printf '%s' "$PROBE" | sha256sum | sed 's/^/ARMC SECRET sha256: /'; else echo "ARMC SECRET ABSENT"; fi
