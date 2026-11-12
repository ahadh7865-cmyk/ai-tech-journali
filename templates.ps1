# Template generators for AI Tech Journal

function Get-HeaderHtml {
    param([string]$basePath, [string]$activeNav)

    $aiActive = if ($activeNav -eq 'ai') { ' active' } else { '' }
    $techActive = if ($activeNav -eq 'tech') { ' active' } else { '' }
    $toolsActive = if ($activeNav -eq 'tools') { ' active' } else { '' }
    $softwareActive = if ($activeNav -eq 'software') { ' active' } else { '' }
    $businessActive = if ($activeNav -eq 'business') { ' active' } else { '' }
    $securityActive = if ($activeNav -eq 'cybersecurity') { ' active' } else { '' }
    $gadgetsActive = if ($activeNav -eq 'gadgets') { ' active' } else { '' }
    $futureActive = if ($activeNav -eq 'future') { ' active' } else { '' }

    return @"
  <!-- Top Ticker Bar -->
  <div class="top-bar">
    <div class="container">
      <div class="trending-ticker">
        <span class="ticker-badge">Live Intel</span>
        <a href="${basePath}articles/agentic-ai-autonomous-workflows-2025.html" class="ticker-headline">Agentic AI in 2025: From Conversational Chatbots to Autonomous Enterprise Workflows</a>
      </div>
      <div class="top-bar-meta">
        <span>Editorial Edition</span>
        <span>•</span>
        <span>Updated Hourly</span>
        <span>•</span>
        <a href="${basePath}about.html" style="color:var(--text-secondary);">Editorial Standards</a>
      </div>
    </div>
  </div>

  <!-- Main Navigation Header -->
  <header class="site-header">
    <div class="container">
      <div class="header-main">
        <a href="${basePath}index.html" class="brand" aria-label="AI Tech Journal Homepage">
          <img src="${basePath}assets/images/logo.svg" alt="AI Tech Journal Logo" class="brand-logo" width="38" height="38">
          <div class="brand-text">
            <span class="brand-title">AI Tech <span>Journal</span></span>
            <span class="brand-tagline">Frontier Technology &amp; AI Intelligence</span>
          </div>
        </a>

        <nav class="nav-menu" aria-label="Primary Navigation">
          <a href="${basePath}index.html" class="nav-link">Home</a>
          <a href="${basePath}categories/artificial-intelligence.html" class="nav-link$aiActive">Artificial Intelligence</a>
          <a href="${basePath}categories/ai-tools.html" class="nav-link$toolsActive">AI Tools</a>
          <a href="${basePath}categories/software.html" class="nav-link$softwareActive">Software</a>
          <a href="${basePath}categories/cybersecurity.html" class="nav-link$securityActive">Cybersecurity</a>
          <a href="${basePath}categories/future-technology.html" class="nav-link$futureActive">Future Tech</a>
        </nav>

        <div class="header-actions">
          <button class="search-trigger-btn" type="button" aria-label="Open Search">
            <span>🔍</span>
            <span>Search</span>
            <kbd>Ctrl+K</kbd>
          </button>
          <a href="#newsletter-signup" class="subscribe-btn-sm">Subscribe</a>
          <button class="mobile-menu-toggle" type="button" aria-label="Toggle Navigation Menu">☰</button>
        </div>
      </div>
    </div>

    <!-- Category Sub-Nav Strip -->
    <div class="category-strip">
      <div class="container">
        <a href="${basePath}categories/artificial-intelligence.html" class="category-pill$aiActive">Artificial Intelligence</a>
        <a href="${basePath}categories/technology.html" class="category-pill$techActive">Technology</a>
        <a href="${basePath}categories/ai-tools.html" class="category-pill$toolsActive">AI Tools</a>
        <a href="${basePath}categories/software.html" class="category-pill$softwareActive">Software</a>
        <a href="${basePath}categories/business-startups.html" class="category-pill$businessActive">Business &amp; Startups</a>
        <a href="${basePath}categories/cybersecurity.html" class="category-pill$securityActive">Cybersecurity</a>
        <a href="${basePath}categories/gadgets.html" class="category-pill$gadgetsActive">Gadgets</a>
        <a href="${basePath}categories/future-technology.html" class="category-pill$futureActive">Future Technology</a>
      </div>
    </div>

    <!-- Mobile Drawer -->
    <div class="mobile-nav-drawer">
      <div class="mobile-nav-links">
        <a href="${basePath}index.html">Home</a>
        <a href="${basePath}categories/artificial-intelligence.html">Artificial Intelligence</a>
        <a href="${basePath}categories/technology.html">Technology</a>
        <a href="${basePath}categories/ai-tools.html">AI Tools</a>
        <a href="${basePath}categories/software.html">Software</a>
        <a href="${basePath}categories/business-startups.html">Business &amp; Startups</a>
        <a href="${basePath}categories/cybersecurity.html">Cybersecurity</a>
        <a href="${basePath}categories/gadgets.html">Gadgets</a>
        <a href="${basePath}categories/future-technology.html">Future Technology</a>
        <a href="${basePath}about.html">About Us</a>
        <a href="${basePath}contact.html">Contact Us</a>
        <a href="${basePath}privacy.html">Privacy Policy</a>
      </div>
    </div>
  </header>
"@
}

function Get-FooterHtml {
    param([string]$basePath)
    return @"
  <!-- Site Footer -->
  <footer class="site-footer">
    <div class="container">
      <div class="footer-top">
        <div class="footer-brand-col">
          <a href="${basePath}index.html" class="brand" style="margin-bottom: 12px; display:inline-flex;">
            <img src="${basePath}assets/images/logo.svg" alt="AI Tech Journal Logo" class="brand-logo" width="34" height="34">
            <div class="brand-text">
              <span class="brand-title" style="font-size:1.2rem;">AI Tech <span>Journal</span></span>
            </div>
          </a>
          <p>AI Tech Journal is an independent technology publication dedicated to rigorous technical journalism, frontier artificial intelligence research, software engineering paradigms, and deep tech analysis.</p>
          <div style="font-size: 0.8125rem; color: var(--text-muted);">
            ISSN 2831-904X • Published Daily
          </div>
        </div>

        <div>
          <h4 class="footer-col-title">Editorial Sections</h4>
          <div class="footer-links">
            <a href="${basePath}categories/artificial-intelligence.html">Artificial Intelligence</a>
            <a href="${basePath}categories/technology.html">Technology</a>
            <a href="${basePath}categories/ai-tools.html">AI Tools</a>
            <a href="${basePath}categories/software.html">Software Architecture</a>
            <a href="${basePath}categories/business-startups.html">Venture &amp; Startups</a>
            <a href="${basePath}categories/cybersecurity.html">Cyber Defense</a>
            <a href="${basePath}categories/future-technology.html">Future Tech &amp; Quantum</a>
          </div>
        </div>

        <div>
          <h4 class="footer-col-title">Publication</h4>
          <div class="footer-links">
            <a href="${basePath}about.html">About Us &amp; Mission</a>
            <a href="${basePath}about.html#standards">Editorial Standards</a>
            <a href="${basePath}about.html#ethics">Ethics &amp; AI Disclosure</a>
            <a href="${basePath}contact.html">Contact Newsroom</a>
            <a href="${basePath}contact.html#press">Press Inquiries</a>
            <a href="${basePath}contact.html#pitch">Submit Pitch</a>
          </div>
        </div>

        <div>
          <h4 class="footer-col-title">Legal &amp; Policy</h4>
          <div class="footer-links">
            <a href="${basePath}privacy.html">Privacy Policy (GDPR/CCPA)</a>
            <a href="${basePath}terms.html">Terms and Conditions</a>
            <a href="${basePath}disclaimer.html">Editorial Disclaimer</a>
            <a href="${basePath}disclaimer.html#ads">Advertising Disclosure</a>
            <a href="${basePath}sitemap.xml">XML Sitemap</a>
          </div>
        </div>
      </div>

      <div class="footer-bottom">
        <div>
          &copy; 2025 AI Tech Journal. All rights reserved. Content protected by international copyright conventions.
        </div>
        <div class="footer-bottom-links">
          <a href="${basePath}privacy.html">Privacy</a>
          <span>•</span>
          <a href="${basePath}terms.html">Terms</a>
          <span>•</span>
          <a href="${basePath}disclaimer.html">Disclaimer</a>
          <span>•</span>
          <a href="${basePath}contact.html">Contact</a>
        </div>
      </div>
    </div>
  </footer>

  <!-- Search Modal Overlay -->
  <div class="search-modal-overlay" role="dialog" aria-modal="true" aria-label="Search AI Tech Journal">
    <div class="search-modal-card">
      <div class="search-input-wrapper">
        <span style="font-size:1.2rem; color:var(--text-muted);">🔍</span>
        <input type="text" class="search-input-field" placeholder="Search AI models, quantum, software, security..." aria-label="Search query">
        <button class="search-close-btn" type="button" aria-label="Close search">✕</button>
      </div>
      <div class="search-results-list"></div>
    </div>
  </div>

  <!-- Back to Top Button -->
  <button class="back-to-top" type="button" aria-label="Back to top">↑</button>
"@
}
