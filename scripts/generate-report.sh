#!/usr/bin/env bash
set -euo pipefail
mkdir -p reports
{
  echo "Run ID: ${GITHUB_RUN_ID:-local}"
  echo "Event:  ${GITHUB_EVENT_NAME:-local}"
  echo "Ref:    ${GITHUB_REF_NAME:-local}"
  echo "OS:     $(uname -s)"
  echo "Java:   $(java -version 2>&1 | head -n1)"
  date -u +"%Y-%m-%dT%H:%M:%SZ"
} > reports/summary.txt
echo "OK" > reports/status.txt
echo "Demo artifacts for GitHub Actions." > reports/readme.txt
echo "Generated demo artifacts: reports/*.txt"
