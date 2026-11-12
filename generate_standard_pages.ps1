. (Join-Path $PSScriptRoot "templates.ps1")

$rootDir = "C:\Users\Allaoudin\.gemini\antigravity\scratch\ai-tech-journal"

# 1. ABOUT US PAGE
$aboutContent = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us — AI Tech Journal</title>
  <meta name="description" content="Learn about AI Tech Journal, our editorial charter, investigative mission, ethics policy, and the technical journalists tracking the frontiers of artificial intelligence.">
  <meta name="keywords" content="About AI Tech Journal, AI Newsroom, Tech Journalism, Editorial Standards">
  <link rel="canonical" href="./about.html">
  
  <!-- Open Graph / Facebook -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="./about.html">
  <meta property="og:title" content="About Us — AI Tech Journal">
  <meta property="og:description" content="Independent technical journalism and analysis covering the frontier of artificial intelligence, computing architectures, and deep technology.">
  <meta property="og:image" content="./assets/images/hero-ai-frontier.jpg">
  
  <!-- Twitter -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="About Us — AI Tech Journal">
  <meta name="twitter:description" content="Independent technical journalism and analysis covering the frontier of artificial intelligence.">
  <meta name="twitter:image" content="./assets/images/hero-ai-frontier.jpg">

  <link rel="stylesheet" href="./assets/css/style.css">
  
  <!-- Schema.org JSON-LD -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "AboutPage",
    "name": "About AI Tech Journal",
    "description": "Editorial mission, journalistic standards, and background of AI Tech Journal.",
    "publisher": {
      "@type": "NewsMediaOrganization",
      "name": "AI Tech Journal",
      "url": "./index.html",
      "logo": {
        "@type": "ImageObject",
        "url": "./assets/images/logo.svg"
      }
    }
  }
  </script>
</head>
<body>
  $(Get-HeaderHtml -basePath "./" -activeNav "none")

  <main class="page-wrapper container">
    <h1 class="page-title">About AI Tech Journal</h1>
    <p class="page-subtitle">The definitive source for deep-dive technical reporting, foundation model breakthroughs, and frontier computing analysis.</p>

    <div class="page-body">
      <h2>Our Mission</h2>
      <p>Founded in 2024, <strong>AI Tech Journal</strong> was created to bridge the critical gap between academic machine learning research papers and high-level enterprise technology reporting. As artificial intelligence transforms from theoretical research into pervasive infrastructure, engineers, technical founders, and industry leaders require rigorous, hype-free analysis based on first principles.</p>
      
      <p>We do not publish regurgitated press releases or AI-hallucinated fluff. Every report, breakdown, and technical evaluation is authored by experienced technologists and dedicated journalists committed to investigative integrity, verifiable benchmark data, and architectural clarity.</p>

      <div class="takeaways-box">
        <div class="takeaways-title">Our Editorial Pillars</div>
        <ul>
          <li><strong>Technical Rigor:</strong> We inspect model weights, benchmarking methodologies, system topologies, and source code before reporting claims.</li>
          <li><strong>Editorial Independence:</strong> No vendor, venture firm, or cloud provider dictates our editorial coverage or influences our ratings.</li>
          <li><strong>Transparency &amp; Ethics:</strong> We disclose all computational resources, testing environments, and potential financial affiliations.</li>
        </ul>
      </div>

      <h2 id="standards">Editorial Standards &amp; Fact-Checking Policy</h2>
      <p>Our editorial team follows a multi-tier review cycle before any article is approved for publication:</p>
      <ol>
        <li><strong>Primary Source Verification:</strong> All claims regarding model efficiency, parameter counts, and benchmark metrics must cite peer-reviewed papers, open repository commit histories, or verifiable enterprise disclosures.</li>
        <li><strong>Reproducibility Testing:</strong> When reviewing open-weight LLMs, developer tools, or hardware benchmarks, our staff conducts independent replication whenever practical.</li>
        <li><strong>Correction Policy:</strong> If a factual error is discovered, we update the article immediately with a prominent timestamped correction note explaining what was changed.</li>
      </ol>

      <h2 id="ethics">AI Usage &amp; Generative Disclosure Policy</h2>
      <p>At AI Tech Journal, we report on artificial intelligence—we do not outsource our critical journalism to it. Our editorial charter strictly mandates:</p>
      <ul>
        <li>All analysis, thesis formulation, and reporting are executed by human writers and editors.</li>
        <li>We occasionally utilize language models for secondary research synthesis, data formatting, or copy editing, but human editors review every sentence prior to publication.</li>
        <li>Any synthetic data, computer-generated visual diagrams, or AI-rendered illustrations are explicitly captioned as such.</li>
      </ul>

      <h2>Editorial Board &amp; Key Contributors</h2>
      <div class="articles-grid" style="margin-top:24px;">
        <div class="article-card">
          <div class="article-card-thumb" style="aspect-ratio:1/1;">
            <img src="./assets/images/author-elena.jpg" alt="Dr. Elena Rostova" onerror="this.src='./assets/images/fallback-image.svg'">
          </div>
          <div class="article-card-body">
            <h3 style="font-size:1.1rem; margin-bottom:4px; color:#fff;">Dr. Elena Rostova</h3>
            <span style="font-size:0.75rem; color:var(--accent-cyan); font-weight:700; text-transform:uppercase;">Lead AI Systems Editor</span>
            <p style="font-size:0.85rem; color:var(--text-secondary); margin-top:8px;">Former machine learning research scientist specializing in transformer architectures and agentic orchestration.</p>
          </div>
        </div>

        <div class="article-card">
          <div class="article-card-thumb" style="aspect-ratio:1/1;">
            <img src="./assets/images/author-marcus.jpg" alt="Marcus Vance" onerror="this.src='./assets/images/fallback-image.svg'">
          </div>
          <div class="article-card-body">
            <h3 style="font-size:1.1rem; margin-bottom:4px; color:#fff;">Marcus Vance</h3>
            <span style="font-size:0.75rem; color:var(--accent-blue); font-weight:700; text-transform:uppercase;">Senior Quantum &amp; Hardware Reporter</span>
            <p style="font-size:0.85rem; color:var(--text-secondary); margin-top:8px;">Investigates quantum error correction, optical computing, and next-generation semiconductor fabrication nodes.</p>
          </div>
        </div>

        <div class="article-card">
          <div class="article-card-thumb" style="aspect-ratio:1/1;">
            <img src="./assets/images/author-sophia.jpg" alt="Sophia Chen" onerror="this.src='./assets/images/fallback-image.svg'">
          </div>
          <div class="article-card-body">
            <h3 style="font-size:1.1rem; margin-bottom:4px; color:#fff;">Sophia Chen</h3>
            <span style="font-size:0.75rem; color:var(--accent-emerald); font-weight:700; text-transform:uppercase;">Open Source &amp; DevTools Editor</span>
            <p style="font-size:0.85rem; color:var(--text-secondary); margin-top:8px;">Full-stack engineer focusing on local inference runtimes, WebGPU acceleration, and developer tooling.</p>
          </div>
        </div>
      </div>
    </div>
  </main>

  $(Get-FooterHtml -basePath "./")

  <script src="./assets/js/articles-data.js"></script>
  <script src="./assets/js/main.js"></script>
</body>
</html>
"@
$aboutContent | Out-File -FilePath (Join-Path $rootDir "about.html") -Encoding utf8

# 2. CONTACT US PAGE
$contactContent = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Our Newsroom — AI Tech Journal</title>
  <meta name="description" content="Get in touch with the editorial team, pitch an investigative story, report a technical correction, or inquire about partnerships at AI Tech Journal.">
  <link rel="canonical" href="./contact.html">
  <link rel="stylesheet" href="./assets/css/style.css">
  
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "ContactPage",
    "name": "Contact AI Tech Journal",
    "url": "./contact.html"
  }
  </script>
</head>
<body>
  $(Get-HeaderHtml -basePath "./" -activeNav "none")

  <main class="page-wrapper container">
    <h1 class="page-title">Contact the Newsroom</h1>
    <p class="page-subtitle">We welcome news tips, technical corrections, research papers, and editorial inquiries.</p>

    <div class="contact-info-cards">
      <div class="info-card">
        <div class="info-card-icon">✉️</div>
        <h4>Editorial Inquiries</h4>
        <p>editorial@aitechjournal.com</p>
      </div>

      <div class="info-card" id="press">
        <div class="info-card-icon">📰</div>
        <h4>Press &amp; Media</h4>
        <p>press@aitechjournal.com</p>
      </div>

      <div class="info-card" id="pitch">
        <div class="info-card-icon">🔒</div>
        <h4>Confidential Tips</h4>
        <p>tips@aitechjournal.com</p>
      </div>
    </div>

    <div class="page-body">
      <h2>Send Us a Message</h2>
      <p>Use the form below to connect directly with our desk editors. For confidential or whistleblower communications, please indicate in your message so we can establish encrypted communication channels.</p>

      <form id="contact-page-form" style="margin-top: 28px;">
        <div class="contact-form-grid">
          <div class="form-group">
            <label class="form-label" for="contact-name">Your Full Name *</label>
            <input type="text" id="contact-name" class="form-control" required placeholder="Dr. Jane Doe">
          </div>
          <div class="form-group">
            <label class="form-label" for="contact-email">Email Address *</label>
            <input type="email" id="contact-email" class="form-control" required placeholder="jane@example.com">
          </div>
        </div>

        <div class="form-group">
          <label class="form-label" for="contact-subject">Topic / Department</label>
          <select id="contact-subject" class="form-control">
            <option value="story-tip">Confidential News Tip / Leak</option>
            <option value="editorial">Editorial Question / Correction</option>
            <option value="research">Submitting Research Paper / Benchmark</option>
            <option value="pitch">Guest Analysis / Author Pitch</option>
            <option value="general">General Inquiries &amp; Partnerships</option>
          </select>
        </div>

        <div class="form-group">
          <label class="form-label" for="contact-message">Message Details *</label>
          <textarea id="contact-message" class="form-control" required placeholder="Please provide background details, verifiable URLs, or code references..."></textarea>
        </div>

        <button type="submit" class="form-submit-btn">Send Message to Editorial Team</button>
      </form>

      <h2 style="margin-top: 48px;">Mailing Address &amp; Office Hours</h2>
      <p><strong>AI Tech Journal Editorial Bureau</strong><br>
      Digital Publishing Operations: Silicon Valley, CA / Remote Global Newsroom<br>
      Newsroom Desk Hours: Monday – Friday, 8:00 AM – 6:00 PM PST<br>
      Breaking News Monitoring: 24/7/365</p>
    </div>
  </main>

  $(Get-FooterHtml -basePath "./")

  <script src="./assets/js/articles-data.js"></script>
  <script src="./assets/js/main.js"></script>
</body>
</html>
"@
$contactContent | Out-File -FilePath (Join-Path $rootDir "contact.html") -Encoding utf8

# 3. PRIVACY POLICY PAGE (AdSense, GDPR, CCPA Compliant)
$privacyContent = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Privacy Policy — AI Tech Journal</title>
  <meta name="description" content="AI Tech Journal's privacy policy, detailing data protection standards, cookie disclosures, Google AdSense compliance, and GDPR/CCPA user rights.">
  <link rel="canonical" href="./privacy.html">
  <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
  $(Get-HeaderHtml -basePath "./" -activeNav "none")

  <main class="page-wrapper container">
    <h1 class="page-title">Privacy Policy</h1>
    <p class="page-subtitle">Last Updated: November 10, 2025 • Effective Immediately</p>

    <div class="page-body">
      <p>At <strong>AI Tech Journal</strong> (accessible via our publication domains), the privacy and security of our readers are of paramount importance. This Privacy Policy document outlines the types of personal information that is collected and recorded by AI Tech Journal and how we utilize it.</p>

      <h2>1. Information We Collect</h2>
      <p>We believe in minimal data footprint architectures. When you visit our static site, we may record standard non-personally identifiable log information:</p>
      <ul>
        <li><strong>Server Log Files:</strong> Like standard web hosts, our hosting infrastructure logs visitor access (IP addresses, browser type, Internet Service Provider (ISP), timestamp, referring/exit pages, and click counts). These are not linked to personally identifiable information and are used solely for analyzing trends, administering the site, and preventing DDoS attacks.</li>
        <li><strong>Newsletter Subscriptions:</strong> If you voluntarily subscribe to our weekly newsletter, we collect only your email address. You may unsubscribe at any time via the one-click unsubscribe link provided in every dispatch.</li>
        <li><strong>Contact Inquiries:</strong> If you submit a query via our contact form, your name, email, and message content will be retained temporarily to facilitate our correspondence.</li>
      </ul>

      <h2>2. Cookies and Web Beacons</h2>
      <p>AI Tech Journal uses minimal local storage to remember user preferences (such as search history and notification dismissals). Third-party vendors, including Google, may use cookies to serve ads based on a user's prior visits to this website or other websites.</p>

      <h2>3. Google AdSense &amp; Third-Party Advertising Disclosures</h2>
      <p>We may partner with third-party advertising networks such as Google AdSense to support our independent journalism:</p>
      <ul>
        <li>Google's use of advertising cookies enables it and its partners to serve ads to our users based on their visit to our sites and/or other sites on the Internet.</li>
        <li>Users may opt out of personalized advertising by visiting <a href="https://adssettings.google.com/" target="_blank" rel="noopener">Google Ads Settings</a>.</li>
        <li>Alternatively, users can opt out of a third-party vendor's use of cookies for personalized advertising by visiting <a href="https://www.aboutads.info/choices/" target="_blank" rel="noopener">www.aboutads.info</a>.</li>
      </ul>

      <h2>4. GDPR Compliance (General Data Protection Regulation)</h2>
      <p>If you are a resident of the European Economic Area (EEA), you have certain data protection rights:</p>
      <ul>
        <li>The right to access, update, or delete the information we have on you.</li>
        <li>The right of rectification.</li>
        <li>The right to object to processing.</li>
        <li>The right to data portability.</li>
      </ul>
      <p>To exercise any of these rights, please contact our Data Protection Officer at <code>privacy@aitechjournal.com</code>.</p>

      <h2>5. CCPA Privacy Rights (California Consumer Privacy Act)</h2>
      <p>Under the CCPA, California consumers have the right to request disclosure of categories of personal data collected, request deletion of collected data, and request that a business that sells personal data not sell the consumer's personal data. <strong>AI Tech Journal does not sell personal information.</strong></p>

      <h2>6. Children's Information</h2>
      <p>AI Tech Journal does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you believe that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will promptly remove such information from our records.</p>
    </div>
  </main>

  $(Get-FooterHtml -basePath "./")

  <script src="./assets/js/articles-data.js"></script>
  <script src="./assets/js/main.js"></script>
</body>
</html>
"@
$privacyContent | Out-File -FilePath (Join-Path $rootDir "privacy.html") -Encoding utf8

# 4. DISCLAIMER PAGE
$disclaimerContent = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editorial Disclaimer — AI Tech Journal</title>
  <meta name="description" content="Editorial disclaimer, financial independence statements, investment disclaimers, and affiliate policies for AI Tech Journal.">
  <link rel="canonical" href="./disclaimer.html">
  <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
  $(Get-HeaderHtml -basePath "./" -activeNav "none")

  <main class="page-wrapper container">
    <h1 class="page-title">Editorial Disclaimer</h1>
    <p class="page-subtitle">Transparency, Financial Independence, and Information Disclosures</p>

    <div class="page-body">
      <h2>1. General Informational Purpose</h2>
      <p>All content published by <strong>AI Tech Journal</strong>—including news reports, software architecture evaluations, code snippets, hardware reviews, and market insights—is provided for educational, journalistic, and informational purposes only.</p>

      <h2>2. Not Investment or Financial Advice</h2>
      <p>Our reporting frequently touches on publicly traded technology companies, venture capital funding rounds, cryptocurrency assets, and private market valuations. <strong>None of the information found on AI Tech Journal constitutes financial, investment, legal, or tax advice.</strong> Readers should conduct their own independent due diligence or consult with a licensed financial advisor before making investment decisions based on market reporting.</p>

      <h2 id="ads">3. Advertising and Commercial Relationships</h2>
      <p>To sustain our independent editorial operation, AI Tech Journal may display contextual advertisements, sponsored content segments, or affiliate links:</p>
      <ul>
        <li><strong>Sponsored Articles:</strong> Any content commissioned, sponsored, or funded by a third party is distinctly labeled with a clear "Sponsored" or "Partner Content" tag at the top of the article.</li>
        <li><strong>Affiliate Links:</strong> From time to time, we may include links to software developer tools, hosting providers, or technical books where we receive a small referral commission at no additional cost to you. Such links never compromise our objective technical testing criteria.</li>
        <li><strong>Google AdSense:</strong> We participate in Google AdSense advertising. Google utilizes machine learning algorithms to serve contextually relevant ads. AI Tech Journal does not endorse specific products or services featured within automated third-party ad blocks.</li>
      </ul>

      <h2>4. Technology Testing and Code Disclaimers</h2>
      <p>Code examples, configuration snippets, and shell scripts published in our technical tutorials are tested at the time of writing. However, software libraries and APIs evolve rapidly. AI Tech Journal provides code "as is" without warranty of any kind, express or implied. Always review and sandbox scripts before deploying to production environments.</p>
    </div>
  </main>

  $(Get-FooterHtml -basePath "./")

  <script src="./assets/js/articles-data.js"></script>
  <script src="./assets/js/main.js"></script>
</body>
</html>
"@
$disclaimerContent | Out-File -FilePath (Join-Path $rootDir "disclaimer.html") -Encoding utf8

# 5. TERMS AND CONDITIONS PAGE
$termsContent = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Terms and Conditions — AI Tech Journal</title>
  <meta name="description" content="Terms of service, intellectual property guidelines, and conditions of use for AI Tech Journal readers.">
  <link rel="canonical" href="./terms.html">
  <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
  $(Get-HeaderHtml -basePath "./" -activeNav "none")

  <main class="page-wrapper container">
    <h1 class="page-title">Terms and Conditions</h1>
    <p class="page-subtitle">Agreement Governing the Use of AI Tech Journal</p>

    <div class="page-body">
      <h2>1. Acceptance of Terms</h2>
      <p>By accessing or browsing <strong>AI Tech Journal</strong>, you agree to be bound by these Terms and Conditions, all applicable laws, and regulations, and agree that you are responsible for compliance with any applicable local laws.</p>

      <h2>2. Intellectual Property Rights</h2>
      <p>Unless otherwise stated, AI Tech Journal and/or its licensors own the intellectual property rights for all editorial material published on the website. All intellectual property rights are reserved. You may view and print pages for your personal, non-commercial use subject to restrictions set in these terms:</p>
      <ul>
        <li>You must not republish full-text articles without explicit prior written authorization.</li>
        <li>You may quote brief excerpts (up to 150 words) provided clear editorial attribution and an active canonical hyperlink to the source article on AI Tech Journal are included.</li>
        <li>You must not sell, rent, or sub-license material from AI Tech Journal.</li>
      </ul>

      <h2>3. User Conduct and Contributions</h2>
      <p>When interacting with comment sections, survey tools, or submitting contact inquiries, you agree not to submit material that is unlawful, defamatory, infringing, or harmful. We reserve the right to moderate or remove any content submitted to our platforms at our sole discretion.</p>

      <h2>4. Limitation of Liability</h2>
      <p>In no event shall AI Tech Journal, its directors, employees, or contributing writers be liable for any damages arising out of the use or inability to use the materials on AI Tech Journal's website.</p>

      <h2>5. Governing Law</h2>
      <p>These terms and conditions are governed by and construed in accordance with the laws of the State of California, United States, and you irrevocably submit to the exclusive jurisdiction of the courts in that State.</p>
    </div>
  </main>

  $(Get-FooterHtml -basePath "./")

  <script src="./assets/js/articles-data.js"></script>
  <script src="./assets/js/main.js"></script>
</body>
</html>
"@
$termsContent | Out-File -FilePath (Join-Path $rootDir "terms.html") -Encoding utf8

# 6. SEARCH PAGE
$searchPageContent = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search News &amp; Articles — AI Tech Journal</title>
  <meta name="description" content="Search across our comprehensive editorial index of artificial intelligence, quantum computing, cybersecurity, and frontier software engineering articles.">
  <link rel="canonical" href="./search.html">
  <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
  $(Get-HeaderHtml -basePath "./" -activeNav "none")

  <main class="container" style="padding: 48px 24px; min-height: 60vh;">
    <div style="max-width: 820px; margin: 0 auto;">
      <h1 class="page-title" style="margin-bottom: 8px;">Search AI Tech Journal</h1>
      <p class="page-subtitle" style="margin-bottom: 28px;">Instant search across all published research analyses, guides, and reports.</p>

      <div style="display:flex; gap:12px; margin-bottom: 32px;">
        <input type="text" id="dedicated-search-input" class="form-control" placeholder="Search keywords: 'Agentic', 'Quantum', 'LLMs', 'Fusion', 'WebAssembly'..." style="font-size:1.1rem; padding:14px 20px;">
        <button type="button" id="dedicated-search-btn" class="form-submit-btn" style="padding:14px 28px; white-space:nowrap;">Search</button>
      </div>

      <div id="search-stats" style="font-size:0.875rem; color:var(--text-muted); margin-bottom: 20px;"></div>
      <div id="dedicated-results" class="articles-grid" style="grid-template-columns: 1fr;"></div>
    </div>
  </main>

  $(Get-FooterHtml -basePath "./")

  <script src="./assets/js/articles-data.js"></script>
  <script src="./assets/js/main.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const input = document.getElementById('dedicated-search-input');
      const btn = document.getElementById('dedicated-search-btn');
      const resultsContainer = document.getElementById('dedicated-results');
      const statsContainer = document.getElementById('search-stats');

      // Check query param
      const urlParams = new URLSearchParams(window.location.search);
      const queryParam = urlParams.get('q');
      if (queryParam) {
        input.value = queryParam;
      }

      function doSearch() {
        const query = input.value.trim().toLowerCase();
        let matches = [];
        if (!query) {
          matches = ARTICLES_DATA;
          statsContainer.textContent = `Showing all \${matches.length} articles across all categories`;
        } else {
          matches = ARTICLES_DATA.filter(a => {
            return a.title.toLowerCase().includes(query) ||
                   a.excerpt.toLowerCase().includes(query) ||
                   a.category.toLowerCase().includes(query) ||
                   a.author.name.toLowerCase().includes(query) ||
                   (a.tags && a.tags.some(t => t.toLowerCase().includes(query)));
          });
          statsContainer.textContent = `Found \${matches.length} result\${matches.length === 1 ? '' : 's'} matching "\${input.value.trim()}"`;
        }

        if (matches.length === 0) {
          resultsContainer.innerHTML = `
            <div style="background:var(--bg-surface); padding:36px; border-radius:var(--radius-md); text-align:center; border:1px solid var(--border-subtle);">
              <h3 style="color:#fff; margin-bottom:8px;">No matches found</h3>
              <p style="color:var(--text-muted);">Try a broader keyword or check our category listings.</p>
            </div>
          `;
          return;
        }

        resultsContainer.innerHTML = matches.map(article => `
          <div class="article-card" style="flex-direction:row; gap:20px;">
            <div style="width:240px; flex-shrink:0;">
              <img src="./assets/images/\${article.image}" alt="\${article.title}" style="width:100%; height:100%; object-fit:cover; border-radius:var(--radius-sm);" onerror="this.src='./assets/images/fallback-image.svg'">
            </div>
            <div class="article-card-body" style="padding:16px 20px 16px 0;">
              <div>
                <span class="badge \${article.categoryBadge}">\${article.category}</span>
                <span style="font-size:0.75rem; color:var(--text-muted); margin-left:8px;">\${article.date}</span>
              </div>
              <h2 class="article-card-title" style="font-size:1.25rem;">
                <a href="./articles/\${article.slug}">\${article.title}</a>
              </h2>
              <p class="article-card-excerpt" style="-webkit-line-clamp:2;">\${article.excerpt}</p>
              <div class="article-card-footer" style="padding-top:10px;">
                <span>By \${article.author.name}</span>
                <span>\${article.readTime}</span>
              </div>
            </div>
          </div>
        `).join('');
      }

      btn.addEventListener('click', doSearch);
      input.addEventListener('keyup', (e) => {
        if (e.key === 'Enter') doSearch();
      });

      doSearch();
    });
  </script>
</body>
</html>
"@
$searchPageContent | Out-File -FilePath (Join-Path $rootDir "search.html") -Encoding utf8

Write-Host "Standard pages generated successfully!"
