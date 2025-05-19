#!/bin/bash

# stealth_scan.sh
# Использование: ./stealth_scan.sh <target>

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Использование: $0 <цель>"
  exit 1
fi

echo "[*] Запуск сканирования на $TARGET..."
nmap -sS -T2 -Pn -n -f --open $TARGET -oN s_scan_results.txt

echo "[+] Сканирование завершено. Результаты в s_scan_results.txt"
