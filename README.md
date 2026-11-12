# AI Tech Journal — Production-Ready AI & Technology News Publication

![AI Tech Journal Logo](assets/images/logo.svg)

> **The Definitive Source for Artificial Intelligence & Frontier Technology**  
> Inspired by TechCrunch and WIRED, built as a high-performance, 100% static, SEO-optimized editorial website designed specifically for zero-dependency hosting on **GitHub Pages**.

---

## 🌟 Features & Highlights

- **Editorial UI/UX Design:** Dark navy/obsidian palette (`#07090e`, `#0e131f`), high-contrast typography, electric cyan and cobalt accents, clean editorial cards, hover transitions, and responsive grid layouts.
- **8 Dedicated Category Desks:**
  - [Artificial Intelligence](categories/artificial-intelligence.html)
  - [Technology](categories/technology.html)
  - [AI Tools](categories/ai-tools.html)
  - [Software](categories/software.html)
  - [Business & Startups](categories/business-startups.html)
  - [Cybersecurity](categories/cybersecurity.html)
  - [Gadgets](categories/gadgets.html)
  - [Future Technology](categories/future-technology.html)
- **14 Original In-Depth Articles:** Complete, realistic technical reporting—zero lorem ipsum. Each article includes key takeaways callouts, data tables or code blocks, pull quotes, author bios, social share actions, and related intelligence links.
- **100% Local Real Images:** All 27 featured images, category banners, author portraits, and brand assets are downloaded locally in `assets/images/` with graceful SVG fallbacks.
- **Client-Side Live Search Engine:** Instant search modal with keyboard shortcut support (`Ctrl+K` / `Cmd+K` or `ESC`) and a dedicated full search interface (`search.html`).
- **Complete Institutional Pages:**
  - [About Us & Editorial Standards](about.html)
  - [Contact Newsroom & Story Pitching](contact.html)
  - [Privacy Policy (GDPR / CCPA / AdSense Compliant)](privacy.html)
  - [Editorial Disclaimer & Investment Disclosures](disclaimer.html)
  - [Terms and Conditions](terms.html)
- **Comprehensive SEO & Structured Data:**
  - Semantic HTML5 elements (`<article>`, `<header>`, `<nav>`, `<aside>`, `<footer>`, `<figure>`)
  - Schema.org JSON-LD structured data on all pages (`NewsArticle`, `CollectionPage`, `AboutPage`, `ContactPage`, `WebSite`)
  - Open Graph & Twitter Cards on every page
  - Canonical links and descriptive alt texts
  - `sitemap.xml` and `robots.txt`
- **GitHub Pages Subdirectory Resilient:** Every asset and internal link uses strict relative paths (`./` and `../`), guaranteeing the site works out-of-the-box whether deployed at a custom domain root (`https://example.com/`) or a GitHub repository path (`https://username.github.io/ai-tech-journal/`).
- **Google AdSense Ready:** Clean advertising slots and compliant privacy disclosures ready for your Publisher ID.

---

## 📁 Project Directory Structure

```text
ai-tech-journal/
├── .github/
│   └── workflows/
│       └── deploy.yml            # Automated GitHub Actions Pages deployment
├── assets/
│   ├── css/
│   │   └── style.css             # Main stylesheet (variables, grid, typography)
│   ├── js/
│   │   ├── articles-data.js      # Central articles registry for search & filters
│   │   └── main.js               # Search modal, mobile drawer, progress bar, toast
│   └── images/
│       ├── logo.svg              # Vector brand logo
│       ├── fallback-image.svg    # Graceful image fallback placeholder
│       ├── hero-ai-frontier.jpg  # Hero cover photo
│       ├── agentic-ai.jpg        # Article featured images (14 high-res files)
│       ├── ...
│       ├── category-ai.jpg       # Category cover photos (8 files)
│       ├── ...
│       └── author-elena.jpg      # Author avatars (4 files)
├── articles/                     # 14 complete individual article pages
│   ├── agentic-ai-autonomous-workflows-2025.html
│   ├── quantum-computing-breakthrough-error-correction.html
│   ├── next-gen-local-llms-open-source-revolution.html
│   ├── zero-trust-security-in-ai-driven-enterprises.html
│   ├── silicon-valley-ai-venture-funding-shifts.html
│   ├── webassembly-and-edge-ai-redefining-software.html
│   ├── neural-interface-wearables-spatial-computing.html
│   ├── clean-energy-fusion-ai-data-center-power.html
│   ├── synthetic-data-breakthroughs-model-training.html
│   ├── ai-code-assistants-future-of-software-engineering.html
│   ├── biometric-defenses-deepfake-identity-theft.html
│   ├── humanoid-robotics-manufacturing-automation.html
│   ├── multimodal-reasoning-vision-language-models.html
│   └── neuromorphic-chips-brain-inspired-computing.html
├── categories/                   # Category desks & hub
│   ├── index.html                # Categories hub listing all desks
│   ├── artificial-intelligence.html
│   ├── technology.html
│   ├── ai-tools.html
│   ├── software.html
│   ├── business-startups.html
│   ├── cybersecurity.html
│   ├── gadgets.html
│   └── future-technology.html
├── index.html                    # Homepage
├── about.html                    # About Us & Editorial Charter
├── contact.html                  # Contact Form & Press Inquiries
├── privacy.html                  # Privacy Policy (GDPR/CCPA/Cookies)
├── disclaimer.html               # Editorial & Investment Disclaimer
├── terms.html                    # Terms of Service
├── search.html                   # Dedicated Search Page
├── sitemap.xml                   # XML Sitemap for Search Engines
├── robots.txt                    # Search Crawler Directives
├── README.md                     # Documentation
└── ai-tech-journal.zip           # Complete packaged archive ready to upload
```

---

## 🚀 Beginner-Friendly Deployment Guide (GitHub Pages)

### Method 1: Using GitHub Web Interface (Easiest - No Terminal Required)

1. Log in to [GitHub.com](https://github.com/) and click **New Repository**.
2. Name your repository (e.g., `ai-tech-journal`).
3. Set visibility to **Public** (required for free GitHub Pages). Do not initialize with a README (this project already includes one).
4. Click **Create repository**.
5. Extract the included `ai-tech-journal.zip` on your computer.
6. On your GitHub repository page, click **uploading an existing file**.
7. Drag and drop all the extracted files and folders (`index.html`, `articles/`, `categories/`, `assets/`, `about.html`, etc.) into GitHub.
8. Commit the changes.
9. Go to **Settings** → **Pages** (in the left sidebar).
10. Under **Build and deployment**:
    - **Source:** Select `Deploy from a branch`.
    - **Branch:** Select `main` (or `master`) and folder `/ (root)`.
    - Click **Save**.
11. Within 60 seconds, GitHub will display your live website URL:  
    `https://<your-username>.github.io/ai-tech-journal/`

---

### Method 2: Using Git Command Line

```bash
# 1. Open terminal inside the project directory
cd ai-tech-journal

# 2. Initialize git repository
git init
git add .
git commit -m "Initial release of AI Tech Journal static publication"

# 3. Connect to your GitHub repository
git branch -M main
git remote add origin https://github.com/<your-username>/ai-tech-journal.git
git push -u origin main
```

*(Optional)* The repository includes an automated GitHub Actions workflow (`.github/workflows/deploy.yml`). If you choose **GitHub Actions** as the build source in repository Settings → Pages, it will build and publish automatically on every push!

---

## 💻 Local Testing & Preview

Because this is a pure static website with zero dependencies, you can preview it immediately:

- **Quickest:** Double-click `index.html` to open it directly in Google Chrome, Firefox, Edge, or Safari. All links, styles, and scripts will work immediately because all asset paths are relative.
- **Using a local web server (Optional):**
  ```powershell
  # Using Python (if installed)
  python -m http.server 8000

  # Or using Node (if installed)
  npx serve .
  ```
  Then visit `http://localhost:8000` in your browser.

---

## 📈 Google AdSense Preparation & Setup

This website has been built to meet Google AdSense publication standards:
- Clear, multi-tiered editorial navigation
- High-quality, original content across 14 distinct articles
- Comprehensive Privacy Policy including Google Advertising cookie disclosures
- Dedicated About Us and Contact pages with genuine editorial policies
- Dedicated ad slots styled cleanly without intrusive pop-ups

### How to insert your Google AdSense code:
1. Open `index.html` and article templates in your text editor.
2. In the `<head>` section, add your AdSense script:
   ```html
   <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-XXXXXXXXXXXXXXXX" crossorigin="anonymous"></script>
   ```
3. Locate the `.ad-slot-wrapper` containers in `index.html`, `articles/*.html`, and `categories/*.html`.
4. Replace the `.ad-placeholder-text` with your AdSense ad unit snippet:
   ```html
   <ins class="adsbygoogle"
        style="display:block"
        data-ad-client="ca-pub-XXXXXXXXXXXXXXXX"
        data-ad-slot="XXXXXXXXXX"
        data-ad-format="auto"
        data-full-width-responsive="true"></ins>
   <script>
        (adsbygoogle = window.adsbygoogle || []).push({});
   </script>
   ```
5. Create an `ads.txt` file in the root folder with:
   ```text
   google.com, pub-XXXXXXXXXXXXXXXX, DIRECT, f08c47fec0942fa0
   ```

---

## ✍️ How to Add New Articles

1. Copy any existing article file in `articles/` (e.g. `articles/agentic-ai-autonomous-workflows-2025.html`) and rename it to your new slug (e.g. `articles/my-new-story.html`).
2. Add your featured image to `assets/images/`.
3. Update the `<title>`, `<meta name="description">`, `<h1>`, byline, and article paragraphs.
4. Add the new article's metadata into `assets/js/articles-data.js` so that the live search modal and search page can find it instantly.
5. Add the new URL into `sitemap.xml`.

---

## 📄 License & Attribution

- **Editorial Content & Templates:** Proprietary architecture for AI Tech Journal.
- **Stock Imagery:** Unsplash license (free for commercial and non-commercial editorial use).
- **Icons & Graphics:** Clean SVG vectors created for this project.
