# Build script for AI Tech Journal
$ErrorActionPreference = "Stop"

$rootDir = "C:\Users\Allaoudin\.gemini\antigravity\scratch\ai-tech-journal"
$articlesDir = Join-Path $rootDir "articles"
$categoriesDir = Join-Path $rootDir "categories"
$assetsDir = Join-Path $rootDir "assets"

New-Item -ItemType Directory -Force -Path $articlesDir | Out-Null
New-Item -ItemType Directory -Force -Path $categoriesDir | Out-Null

Write-Host "Creating articles and category pages..."
