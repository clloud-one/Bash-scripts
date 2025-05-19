#!/bin/bash
TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Использование: $0 <цель>"
  exit 1
fi

echo "[*] Сканирование $TARGET"
nmap --script vuln -T4 $TARGET -oN vuln_scan_results.txt
echo "[+] Сканирование завершено. Результаты в vuln_scan_results.txt"
