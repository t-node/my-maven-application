$ErrorActionPreference = "Stop"
New-Item -ItemType Directory -Force -Path reports | Out-Null
$javaVer = & java -version 2>&1 | Select-Object -First 1
@"
Run ID: $env:GITHUB_RUN_ID
Event:  $env:GITHUB_EVENT_NAME
Ref:    $env:GITHUB_REF_NAME
OS:     Windows
Java:   $javaVer
$(Get-Date).ToUniversalTime().ToString("s")Z
"@ | Out-File -Encoding utf8 reports/summary.txt
"OK" | Out-File -Encoding utf8 reports/status.txt
"Demo artifacts for GitHub Actions." | Out-File -Encoding utf8 reports/readme.txt
Write-Host "Generated demo artifacts: reports/*.txt"
