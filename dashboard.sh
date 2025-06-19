#!/bin/bash
# dashboard.sh

echo "=============================="
echo "🌐 DARK WEB THREAT DASHBOARD"
echo "Date: $(date)"
echo "=============================="

cat leak_log_*.txt 2>/dev/null | grep -i -E 'riscomashete|caprivivision|password' | sort | uniq

echo "=============================="
echo "Sources scanned: 2"
echo "New leaks today: $(grep -c '^' leak_log_$(date +%Y%m%d).txt 2>/dev/null)"
