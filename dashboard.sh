#!/bin/bash
# dashboard.sh (multi-day)

echo "=============================="
echo "🌐 DARK WEB THREAT DASHBOARD"
echo "Date: $(date)"
echo "=============================="

cat leak_log_*.txt 2>/dev/null | grep -i -E 'riscomashete|caprivivision|@gmail.com|password' | sort | uniq

echo "=============================="
echo "Logs scanned: $(ls leak_log_*.txt 2>/dev/null | wc -l)"
echo "Total alerts: $(cat leak_log_*.txt 2>/dev/null | grep -c 'Keyword:')"
