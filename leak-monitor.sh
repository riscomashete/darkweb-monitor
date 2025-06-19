#!/bin/bash
# leak-monitor.sh

KEYWORDS=("riscomashete" "caprivivision" "@gmail.com" "password" "leaked")
OUTPUT="leak_log_$(date +%Y%m%d).txt"

SITES=(
  "http://pastelinkm4x.onion"
  "http://zerobinp7k.onion"
)

for site in "${SITES[@]}"; do
  echo "[*] Scanning: $site"
  data=$(torsocks curl -s --connect-timeout 10 "$site")

  for keyword in "${KEYWORDS[@]}"; do
    if echo "$data" | grep -i "$keyword" &> /dev/null; then
      echo "[!] Keyword found: $keyword at $site" | tee -a "$OUTPUT"
    fi
  done
done
