#!/bin/bash
# leak-monitor.sh (advanced version)

KEYWORD_FILE="keywords.txt"
LOG_FILE="leak_log_$(date +%Y%m%d).txt"

# Check for keyword file
if [ ! -f "$KEYWORD_FILE" ]; then
  echo "❌ ERROR: '$KEYWORD_FILE' not found. Please create it with one keyword per line."
  exit 1
fi

mapfile -t KEYWORDS < "$KEYWORD_FILE"

SITES=(
  "http://pastelinkm4x.onion"
  "http://zerobinp7k.onion"
)

echo "📡 Starting dark web leak scan: $(date)" | tee -a "$LOG_FILE"

for site in "${SITES[@]}"; do
  echo "[*] Scanning: $site"
  data=$(torsocks curl --socks5-hostname 127.0.0.1:9050 -s --connect-timeout 15 "$site")

  for keyword in "${KEYWORDS[@]}"; do
    if echo "$data" | grep -i "$keyword" &> /dev/null; then
      echo "[!] $(date +"%F %T") | Keyword: '$keyword' found at $site" | tee -a "$LOG_FILE"
    fi
  done
done

echo "✅ Scan complete. Results saved to $LOG_FILE"
