$rootDir = "C:\Users\Allaoudin\.gemini\antigravity\scratch\ai-tech-journal"
$workflowDir = Join-Path $rootDir ".github\workflows"
New-Item -ItemType Directory -Force -Path $workflowDir | Out-Null

# 1. ROBOTS.TXT
$robotsContent = @"
User-agent: *
Allow: /

# Canonical Sitemap URL
Sitemap: sitemap.xml
"@
$robotsContent | Out-File -FilePath (Join-Path $rootDir "robots.txt") -Encoding ascii

# 2. SITEMAP.XML
$articles = @(
  "articles/agentic-ai-autonomous-workflows-2025.html",
  "articles/quantum-computing-breakthrough-error-correction.html",
  "articles/next-gen-local-llms-open-source-revolution.html",
  "articles/zero-trust-security-in-ai-driven-enterprises.html",
  "articles/silicon-valley-ai-venture-funding-shifts.html",
  "articles/webassembly-and-edge-ai-redefining-software.html",
  "articles/neural-interface-wearables-spatial-computing.html",
  "articles/clean-energy-fusion-ai-data-center-power.html",
  "articles/synthetic-data-breakthroughs-model-training.html",
  "articles/ai-code-assistants-future-of-software-engineering.html",
  "articles/biometric-defenses-deepfake-identity-theft.html",
  "articles/humanoid-robotics-manufacturing-automation.html",
  "articles/multimodal-reasoning-vision-language-models.html",
  "articles/neuromorphic-chips-brain-inspired-computing.html"
)

$categories = @(
  "categories/index.html",
  "categories/artificial-intelligence.html",
  "categories/technology.html",
  "categories/ai-tools.html",
  "categories/software.html",
  "categories/business-startups.html",
  "categories/cybersecurity.html",
  "categories/gadgets.html",
  "categories/future-technology.html"
)

$standards = @(
  "about.html",
  "contact.html",
  "privacy.html",
  "disclaimer.html",
  "terms.html",
  "search.html"
)

$sitemap = @"
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <!-- Homepage -->
  <url>
    <loc>./index.html</loc>
    <lastmod>2025-11-10</lastmod>
    <changefreq>daily</changefreq>
    <priority>1.0</priority>
  </url>
"@

foreach ($art in $articles) {
  $sitemap += @"

  <url>
    <loc>./$art</loc>
    <lastmod>2025-11-10</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.9</priority>
  </url>
"@
}

foreach ($cat in $categories) {
  $sitemap += @"

  <url>
    <loc>./$cat</loc>
    <lastmod>2025-11-10</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
"@
}

foreach ($std in $standards) {
  $sitemap += @"

  <url>
    <loc>./$std</loc>
    <lastmod>2025-11-10</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.5</priority>
  </url>
"@
}

$sitemap += "`n</urlset>`n"
$sitemap | Out-File -FilePath (Join-Path $rootDir "sitemap.xml") -Encoding utf8

# 3. GITHUB ACTIONS DEPLOY WORKFLOW
$deployYml = @"
name: Deploy AI Tech Journal to GitHub Pages

on:
  push:
    branches: ["main", "master"]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: false

jobs:
  deploy:
    environment:
      name: github-pages
      url: `${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Pages
        uses: actions/configure-pages@v5

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: '.'

      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
"@
$deployYml | Out-File -FilePath (Join-Path $workflowDir "deploy.yml") -Encoding utf8

Write-Host "SEO files and GitHub Actions workflow generated successfully!"
