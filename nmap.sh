#!/bin/bash

# basic_scan.sh
# Использование: ./basic_scan.sh <target>

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Использование: $0 <цель>"
  exit 1
fi

echo "[*] Запуск сканирования на $TARGET..."
nmap -sV -T4 -F $TARGET -oN basic_scan_results.txt

echo "[+] Сканирование завершено. Результаты в scan_results.txt"
