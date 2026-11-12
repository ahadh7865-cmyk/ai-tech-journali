$base = 'C:\Users\Allaoudin\.gemini\antigravity\scratch\ai-tech-journal'
$htmlFiles = Get-ChildItem -Path $base -Filter *.html -Recurse

$brokenLinks = 0
$brokenImages = 0
$totalImagesChecked = 0
$totalLinksChecked = 0

foreach ($file in $htmlFiles) {
    $content = Get-Content -Path $file.FullName -Raw
    $dir = $file.DirectoryName

    # Check images
    $imgMatches = [regex]::Matches($content, 'src=["'']([^"'']+)["'']')
    foreach ($m in $imgMatches) {
        $src = $m.Groups[1].Value
        if ($src -match '^https?://') { continue }
        if ($src -match '^\$\{') { continue }
        $totalImagesChecked++
        $resolved = [System.IO.Path]::GetFullPath([System.IO.Path]::Combine($dir, $src))
        if (-not (Test-Path $resolved)) {
            Write-Host "[BROKEN IMAGE] in $($file.Name): $src"
            $brokenImages++
        }
    }

    # Check links
    $linkMatches = [regex]::Matches($content, 'href=["'']([^"'']+)["'']')
    foreach ($m in $linkMatches) {
        $href = $m.Groups[1].Value
        if ($href -match '^https?://' -or $href -match '^#' -or $href -match '^mailto:') { continue }
        if ($href -match '^\$\{') { continue }
        $cleanHref = $href.Split('#')[0].Split('?')[0]
        if ([string]::IsNullOrWhiteSpace($cleanHref)) { continue }
        $totalLinksChecked++
        $resolved = [System.IO.Path]::GetFullPath([System.IO.Path]::Combine($dir, $cleanHref))
        if (-not (Test-Path $resolved)) {
            Write-Host "[BROKEN LINK] in $($file.Name): $href"
            $brokenLinks++
        }
    }
}

Write-Host "=========================================="
Write-Host "VERIFICATION RESULTS:"
Write-Host "HTML Files Analyzed:       $($htmlFiles.Count)"
Write-Host "Total Local Images Tested: $totalImagesChecked"
Write-Host "Broken Image References:   $brokenImages"
Write-Host "Total Internal Links:      $totalLinksChecked"
Write-Host "Broken Internal Links:     $brokenLinks"
Write-Host "=========================================="
