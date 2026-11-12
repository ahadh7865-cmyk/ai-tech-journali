$rootDir = "C:\Users\Allaoudin\.gemini\antigravity\scratch\ai-tech-journal"
$zipPath = Join-Path $rootDir "ai-tech-journal.zip"
if (Test-Path $zipPath) {
    Remove-Item $zipPath -Force
}
$items = Get-ChildItem -Path $rootDir | Where-Object { $_.Name -ne "ai-tech-journal.zip" }
Compress-Archive -Path $items.FullName -DestinationPath $zipPath -Force
$zipFile = Get-Item $zipPath
Write-Host "ZIP Created: $($zipFile.FullName) ($([math]::Round($zipFile.Length / 1MB, 2)) MB)"
