$images = [ordered]@{
  'hero-ai-frontier.jpg'          = 'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?w=1200&auto=format&fit=crop&q=80'
  'agentic-ai.jpg'                 = 'https://images.unsplash.com/photo-1620712943543-bcc4688e7485?w=1200&auto=format&fit=crop&q=80'
  'quantum-computing.jpg'          = 'https://images.unsplash.com/photo-1635070041078-e363dbe005cb?w=1200&auto=format&fit=crop&q=80'
  'local-llms.jpg'                 = 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=1200&auto=format&fit=crop&q=80'
  'cybersecurity-zero-trust.jpg'   = 'https://images.unsplash.com/photo-1563986768609-322da13575f3?w=1200&auto=format&fit=crop&q=80'
  'venture-funding.jpg'            = 'https://images.unsplash.com/photo-1559526324-4b87b5e36e44?w=1200&auto=format&fit=crop&q=80'
  'webassembly-edge.jpg'           = 'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=1200&auto=format&fit=crop&q=80'
  'neural-wearables.jpg'           = 'https://images.unsplash.com/photo-1593508512255-86ab42a8e620?w=1200&auto=format&fit=crop&q=80'
  'clean-fusion-datacenter.jpg'    = 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=1200&auto=format&fit=crop&q=80'
  'synthetic-data.jpg'             = 'https://images.unsplash.com/photo-1509228468518-180dd4864904?w=1200&auto=format&fit=crop&q=80'
  'ai-code-assistants.jpg'         = 'https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=1200&auto=format&fit=crop&q=80'
  'biometric-defenses.jpg'         = 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?w=1200&auto=format&fit=crop&q=80'
  'humanoid-robotics.jpg'          = 'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=1200&auto=format&fit=crop&q=80'
  'multimodal-vision.jpg'          = 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=1200&auto=format&fit=crop&q=80'
  'neuromorphic-chips.jpg'         = 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?w=1200&auto=format&fit=crop&q=80'
  'category-ai.jpg'                = 'https://images.unsplash.com/photo-1677442136019-21780ecad995?w=1200&auto=format&fit=crop&q=80'
  'category-tech.jpg'              = 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=1200&auto=format&fit=crop&q=80'
  'category-tools.jpg'             = 'https://images.unsplash.com/photo-1581291518857-4e27b48ff24e?w=1200&auto=format&fit=crop&q=80'
  'category-software.jpg'          = 'https://images.unsplash.com/photo-1542831371-29b0f74f9713?w=1200&auto=format&fit=crop&q=80'
  'category-business.jpg'          = 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=1200&auto=format&fit=crop&q=80'
  'category-cybersecurity.jpg'     = 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=1200&auto=format&fit=crop&q=80'
  'category-gadgets.jpg'           = 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=1200&auto=format&fit=crop&q=80'
  'category-future.jpg'            = 'https://images.unsplash.com/photo-1506703719100-a0f3a48c0f86?w=1200&auto=format&fit=crop&q=80'
  'author-elena.jpg'               = 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=400&auto=format&fit=crop&q=80'
  'author-marcus.jpg'              = 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&auto=format&fit=crop&q=80'
  'author-sophia.jpg'              = 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=400&auto=format&fit=crop&q=80'
  'author-david.jpg'               = 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400&auto=format&fit=crop&q=80'
}

$destDir = 'C:\Users\Allaoudin\.gemini\antigravity\scratch\ai-tech-journal\assets\images'
if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Force -Path $destDir | Out-Null
}

$results = @()
foreach ($entry in $images.GetEnumerator()) {
    $name = $entry.Key
    $url = $entry.Value
    $outPath = Join-Path $destDir $name
    & curl.exe -s -L --retry 3 --connect-timeout 10 -o $outPath $url
    $file = Get-Item $outPath -ErrorAction SilentlyContinue
    if ($file -and $file.Length -gt 1000) {
        $results += [PSCustomObject]@{ File = $name; SizeKB = [math]::Round($file.Length / 1024, 1); Status = 'OK' }
    } else {
        $results += [PSCustomObject]@{ File = $name; SizeKB = 0; Status = 'Failed' }
    }
}

$results | Format-Table -AutoSize
