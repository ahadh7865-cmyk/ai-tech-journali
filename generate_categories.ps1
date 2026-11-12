. (Join-Path $PSScriptRoot "templates.ps1")

$rootDir = "C:\Users\Allaoudin\.gemini\antigravity\scratch\ai-tech-journal"
$categoriesDir = Join-Path $rootDir "categories"

$categories = @(
  @{
    slug = "artificial-intelligence.html"
    name = "Artificial Intelligence"
    navCode = "ai"
    badgeClass = "badge-ai"
    image = "category-ai.jpg"
    description = "Groundbreaking research in foundation models, autonomous agents, neural architectures, and the mathematical frontiers of machine intelligence."
    articleSlugs = @(
      "agentic-ai-autonomous-workflows-2025.html",
      "synthetic-data-breakthroughs-model-training.html",
      "multimodal-reasoning-vision-language-models.html"
    )
  },
  @{
    slug = "technology.html"
    name = "Technology"
    navCode = "tech"
    badgeClass = "badge-tech"
    image = "category-tech.jpg"
    description = "Infrastructure, clean energy datacenters, neuromorphic computing, and advanced semiconductor packaging powering the computational era."
    articleSlugs = @(
      "clean-energy-fusion-ai-data-center-power.html",
      "neuromorphic-chips-brain-inspired-computing.html"
    )
  },
  @{
    slug = "ai-tools.html"
    name = "AI Tools"
    navCode = "tools"
    badgeClass = "badge-tools"
    image = "category-tools.jpg"
    description = "Evaluations and benchmarks of production-ready AI frameworks, local LLM runtimes, agent orchestrators, and open-source models."
    articleSlugs = @(
      "next-gen-local-llms-open-source-revolution.html"
    )
  },
  @{
    slug = "software.html"
    name = "Software"
    navCode = "software"
    badgeClass = "badge-software"
    image = "category-software.jpg"
    description = "Engineering paradigms, WebAssembly runtime advances, distributed systems design, and AI-accelerated developer productivity."
    articleSlugs = @(
      "webassembly-and-edge-ai-redefining-software.html",
      "ai-code-assistants-future-of-software-engineering.html"
    )
  },
  @{
    slug = "business-startups.html"
    name = "Business & Startups"
    navCode = "business"
    badgeClass = "badge-business"
    image = "category-business.jpg"
    description = "Venture capital trends, enterprise SaaS economics, startup unit economics, and market consolidations across the AI ecosystem."
    articleSlugs = @(
      "silicon-valley-ai-venture-funding-shifts.html"
    )
  },
  @{
    slug = "cybersecurity.html"
    name = "Cybersecurity"
    navCode = "cybersecurity"
    badgeClass = "badge-cybersecurity"
    image = "category-cybersecurity.jpg"
    description = "Zero Trust identity governance, machine attestation, deepfake counter-measures, and threat intelligence for autonomous systems."
    articleSlugs = @(
      "zero-trust-security-in-ai-driven-enterprises.html",
      "biometric-defenses-deepfake-identity-theft.html"
    )
  },
  @{
    slug = "gadgets.html"
    name = "Gadgets"
    navCode = "gadgets"
    badgeClass = "badge-gadgets"
    image = "category-gadgets.jpg"
    description = "Next-generation spatial computing hardware, neural-interface electromyography wearables, smart optics, and consumer robotics."
    articleSlugs = @(
      "neural-interface-wearables-spatial-computing.html"
    )
  },
  @{
    slug = "future-technology.html"
    name = "Future Technology"
    navCode = "future"
    badgeClass = "badge-future"
    image = "category-future.jpg"
    description = "Fault-tolerant quantum computing, humanoid robotics, brain-computer interfaces, and radical technological horizons."
    articleSlugs = @(
      "quantum-computing-breakthrough-error-correction.html",
      "humanoid-robotics-manufacturing-automation.html"
    )
  }
)

# Reference articles metadata
$articlesMeta = @{
  "agentic-ai-autonomous-workflows-2025.html" = @{
    title = "Agentic AI in 2025: From Conversational Chatbots to Autonomous Enterprise Workflows"
    date = "November 10, 2025"; author = "Dr. Elena Rostova"; readTime = "7 min read"; img = "agentic-ai.jpg"
    excerpt = "Autonomous multi-agent systems are shifting enterprise software from passive assistants to self-orchestrating task forces capable of complex software engineering and strategic planning."
    badge = "badge-ai"; cat = "Artificial Intelligence"
  }
  "quantum-computing-breakthrough-error-correction.html" = @{
    title = "Fault-Tolerant Quantum Computing Crosses the Threshold with Logical Qubit Milestone"
    date = "November 9, 2025"; author = "Marcus Vance"; readTime = "9 min read"; img = "quantum-computing.jpg"
    excerpt = "A landmark demonstration in neutral-atom architecture suppresses error rates by three orders of magnitude, bringing cryptographically relevant quantum machines years closer."
    badge = "badge-future"; cat = "Future Technology"
  }
  "next-gen-local-llms-open-source-revolution.html" = @{
    title = "The Local LLM Revolution: Running 70B Reasoning Models on Consumer Hardware"
    date = "November 8, 2025"; author = "Sophia Chen"; readTime = "6 min read"; img = "local-llms.jpg"
    excerpt = "Breakthrough 2-bit quantization schemes and unified memory architectures allow high-tier reasoning models to run privately on everyday workstations without cloud subscriptions."
    badge = "badge-tools"; cat = "AI Tools"
  }
  "zero-trust-security-in-ai-driven-enterprises.html" = @{
    title = "Zero-Trust Security Architectures Must Evolve to Contain Autonomous AI Agents"
    date = "November 7, 2025"; author = "David K. Meyer"; readTime = "8 min read"; img = "cybersecurity-zero-trust.jpg"
    excerpt = "When autonomous agents execute code and access private data lakes, traditional identity perimeters collapse. Here is how modern CISOs are enforcing machine identity boundaries."
    badge = "badge-cybersecurity"; cat = "Cybersecurity"
  }
  "silicon-valley-ai-venture-funding-shifts.html" = @{
    title = "Venture Capital Pivot: Investors Abandon Wrapper Startups to Back Vertical AI Foundry Infrastructure"
    date = "November 6, 2025"; author = "Dr. Elena Rostova"; readTime = "5 min read"; img = "venture-funding.jpg"
    excerpt = "As frontier model creators swallow commoditized features, Series A check sizes are flowing exclusively into deep vertical solutions with proprietary data moats."
    badge = "badge-business"; cat = "Business & Startups"
  }
  "webassembly-and-edge-ai-redefining-software.html" = @{
    title = "WebAssembly and Edge AI: Why the Future of Web Applications is Zero-Latency Local Inference"
    date = "November 5, 2025"; author = "Sophia Chen"; readTime = "7 min read"; img = "webassembly-edge.jpg"
    excerpt = "Wasm combined with WebGPU allows client browsers to execute transformer neural networks natively, eliminating cloud API costs and protecting user data."
    badge = "badge-software"; cat = "Software"
  }
  "neural-interface-wearables-spatial-computing.html" = @{
    title = "Neural-Interface Wearables: Non-Invasive EMG Sensors Replace Traditional Spatial Computing Gestures"
    date = "November 4, 2025"; author = "Marcus Vance"; readTime = "6 min read"; img = "neural-wearables.jpg"
    excerpt = "Sub-millimeter electromyography wristbands can detect neuromuscular intent before hands even twitch, unlocking invisible control for next-generation smart glasses."
    badge = "badge-gadgets"; cat = "Gadgets"
  }
  "clean-energy-fusion-ai-data-center-power.html" = @{
    title = "Nuclear Fusion and Next-Gen Geothermal: The Race to Power Gigawatt-Scale AI Hyperscale Clusters"
    date = "November 3, 2025"; author = "David K. Meyer"; readTime = "8 min read"; img = "clean-fusion-datacenter.jpg"
    excerpt = "With AI data centers projected to consume over 8% of total US electricity by 2028, cloud titans are signing direct power-purchase agreements with advanced nuclear developers."
    badge = "badge-tech"; cat = "Technology"
  }
  "synthetic-data-breakthroughs-model-training.html" = @{
    title = "Synthetic Data Surpasses Web Scraping as Frontier AI Models Run Out of Human-Generated Text"
    date = "November 2, 2025"; author = "Dr. Elena Rostova"; readTime = "7 min read"; img = "synthetic-data.jpg"
    excerpt = "With public internet corpora exhausted, self-correcting Monte Carlo tree search and synthetic reasoning chains have become the primary rocket fuel for frontier AI training."
    badge = "badge-ai"; cat = "Artificial Intelligence"
  }
  "ai-code-assistants-future-of-software-engineering.html" = @{
    title = "The Senior Engineer of 2026: Navigating Software Development in an Era of 80% Automated Code Generation"
    date = "November 1, 2025"; author = "Sophia Chen"; readTime = "6 min read"; img = "ai-code-assistants.jpg"
    excerpt = "Code generation tools have fundamentally shifted the engineering discipline from syntax production to architecture validation, formal verification, and system telemetry."
    badge = "badge-software"; cat = "Software"
  }
  "biometric-defenses-deepfake-identity-theft.html" = @{
    title = "Combatting Real-Time Voice Cloning: The Cryptographic Watermarking Standards Defending Financial Networks"
    date = "October 31, 2025"; author = "David K. Meyer"; readTime = "8 min read"; img = "biometric-defenses.jpg"
    excerpt = "Financial institutions deploy hardware-attested C2PA audio watermarks and liveness latency challenges to defeat ultra-realistic deepfake wire fraud attempts."
    badge = "badge-cybersecurity"; cat = "Cybersecurity"
  }
  "humanoid-robotics-manufacturing-automation.html" = @{
    title = "Humanoid Robots Enter Commercial Automotive Assembly Lines for Precision Production"
    date = "October 30, 2025"; author = "Marcus Vance"; readTime = "7 min read"; img = "humanoid-robotics.jpg"
    excerpt = "End-to-end vision-action neural models enable bipedal robots to handle delicate wiring harnesses and irregular components that previously baffled rigid robotic arms."
    badge = "badge-future"; cat = "Future Technology"
  }
  "multimodal-reasoning-vision-language-models.html" = @{
    title = "Spatial Understanding in Multimodal Models: How Next-Gen VLMs Perceive 3D Physical Reality"
    date = "October 29, 2025"; author = "Dr. Elena Rostova"; readTime = "7 min read"; img = "multimodal-vision.jpg"
    excerpt = "New native multimodal tokenizers move beyond flat 2D pixels to model depth, volumetric geometry, and physical collision dynamics in real-time video streams."
    badge = "badge-ai"; cat = "Artificial Intelligence"
  }
  "neuromorphic-chips-brain-inspired-computing.html" = @{
    title = "Spiking Neural Networks on Neuromorphic Silicon Deliver 100x Efficiency in Edge Audio and Vision"
    date = "October 28, 2025"; author = "Marcus Vance"; readTime = "6 min read"; img = "neuromorphic-chips.jpg"
    excerpt = "By processing information only when an event spike occurs, neuromorphic processors enable micro-watt AI perception for always-on sensors and satellites."
    badge = "badge-tech"; cat = "Technology"
  }
}

foreach ($cat in $categories) {
  $cardsHtml = ""
  foreach ($slug in $cat.articleSlugs) {
    $meta = $articlesMeta[$slug]
    $cardsHtml += @"
      <article class="article-card">
        <div class="article-card-thumb">
          <img src="../assets/images/$($meta.img)" alt="$($meta.title)" loading="lazy" onerror="this.src='../assets/images/fallback-image.svg'">
        </div>
        <div class="article-card-body">
          <span class="badge $($meta.badge)">$($meta.cat)</span>
          <h2 class="article-card-title"><a href="../articles/$slug">$($meta.title)</a></h2>
          <p class="article-card-excerpt">$($meta.excerpt)</p>
          <div class="article-card-footer">
            <span>By $($meta.author)</span>
            <span>$($meta.date) • $($meta.readTime)</span>
          </div>
        </div>
      </article>
"@
  }

  $catPageHtml = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$($cat.name) News &amp; In-Depth Analysis — AI Tech Journal</title>
  <meta name="description" content="$($cat.description)">
  <link rel="canonical" href="./$($cat.slug)">

  <!-- Open Graph -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="./$($cat.slug)">
  <meta property="og:title" content="$($cat.name) — AI Tech Journal">
  <meta property="og:description" content="$($cat.description)">
  <meta property="og:image" content="../assets/images/$($cat.image)">

  <link rel="stylesheet" href="../assets/css/style.css">

  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "CollectionPage",
    "name": "$($cat.name) News & Analysis",
    "description": "$($cat.description)",
    "url": "./$($cat.slug)",
    "publisher": {
      "@type": "NewsMediaOrganization",
      "name": "AI Tech Journal",
      "url": "../index.html",
      "logo": {
        "@type": "ImageObject",
        "url": "../assets/images/logo.svg"
      }
    }
  }
  </script>
</head>
<body data-subfolder="true">
  $(Get-HeaderHtml -basePath "../" -activeNav $cat.navCode)

  <main class="container">
    <header class="category-hero">
      <span class="badge $($cat.badgeClass)" style="margin-bottom:12px;">Category Desk</span>
      <h1 class="category-hero-title">$($cat.name)</h1>
      <p class="category-hero-desc">$($cat.description)</p>
      <div style="font-size:0.8125rem; color:var(--text-muted); margin-top:12px;">
        Curated Technical Intelligence • $($cat.articleSlugs.Count) Deep-Dive Reports
      </div>
    </header>

    <div class="articles-grid" style="margin-bottom: 56px;">
      $cardsHtml
    </div>

    <!-- AdSense Placement -->
    <div class="ad-slot-wrapper">
      <div class="ad-slot-inner">
        <span class="ad-slot-label">Advertisement</span>
        <div class="ad-placeholder-text">Responsive AdSense Placement Slot [Slot-ID: 80921430]</div>
      </div>
    </div>
  </main>

  $(Get-FooterHtml -basePath "../")

  <script src="../assets/js/articles-data.js"></script>
  <script src="../assets/js/main.js"></script>
</body>
</html>
"@

  $outPath = Join-Path $categoriesDir $cat.slug
  $catPageHtml | Out-File -FilePath $outPath -Encoding utf8
  Write-Host "Generated: categories/$($cat.slug)"
}

# Categories Hub index.html
$hubCards = ""
foreach ($cat in $categories) {
  $hubCards += @"
    <div class="article-card">
      <div class="article-card-thumb" style="aspect-ratio:16/9;">
        <img src="../assets/images/$($cat.image)" alt="$($cat.name)" loading="lazy" onerror="this.src='../assets/images/fallback-image.svg'">
      </div>
      <div class="article-card-body">
        <span class="badge $($cat.badgeClass)">$($cat.articleSlugs.Count) Articles</span>
        <h2 class="article-card-title"><a href="../categories/$($cat.slug)">$($cat.name)</a></h2>
        <p class="article-card-excerpt">$($cat.description)</p>
        <div class="article-card-footer">
          <a href="../categories/$($cat.slug)" style="color:var(--accent-cyan); font-weight:700;">Explore Desk →</a>
        </div>
      </div>
    </div>
"@
}

$hubHtml = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>All Categories &amp; Editorial Desks — AI Tech Journal</title>
  <meta name="description" content="Browse all 8 dedicated technology desks at AI Tech Journal, spanning Artificial Intelligence, Cybersecurity, Quantum, Software, and Robotics.">
  <link rel="canonical" href="./index.html">
  <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body data-subfolder="true">
  $(Get-HeaderHtml -basePath "../" -activeNav "none")

  <main class="container">
    <header class="category-hero">
      <span class="badge" style="margin-bottom:12px;">Editorial Desks</span>
      <h1 class="category-hero-title">Browse by Category</h1>
      <p class="category-hero-desc">Explore our 8 specialized reporting desks tracking frontier science, artificial intelligence, and enterprise computing architectures.</p>
    </header>

    <div class="articles-grid" style="margin-bottom: 56px;">
      $hubCards
    </div>
  </main>

  $(Get-FooterHtml -basePath "../")

  <script src="../assets/js/articles-data.js"></script>
  <script src="../assets/js/main.js"></script>
</body>
</html>
"@

$hubHtml | Out-File -FilePath (Join-Path $categoriesDir "index.html") -Encoding utf8
Write-Host "Generated: categories/index.html (Categories Hub)"
