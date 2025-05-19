#!/bin/bash
TARGET=$1
nikto -h $TARGET -o nikto_results.txt
echo "[+] Результаты в: vuln_scan_results.txt"
