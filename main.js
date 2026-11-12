/**
 * AI Tech Journal - Core Interactive Logic
 * Handles Search, Navigation, Reading Progress, Copy Links, and Forms
 */

document.addEventListener("DOMContentLoaded", () => {
  // 1. Calculate Relative Base Path
  // If the page is in a subfolder like /articles/ or /categories/, prefix is "../"
  const isSubfolder = window.location.pathname.includes("/articles/") || 
                      window.location.pathname.includes("/categories/") ||
                      document.body.getAttribute("data-subfolder") === "true";
  const basePath = isSubfolder ? "../" : "./";

  // 2. Image Fallback Handler
  const fallbackImg = basePath + "assets/images/fallback-image.svg";
  document.querySelectorAll("img").forEach(img => {
    img.addEventListener("error", function() {
      if (this.src !== fallbackImg) {
        this.src = fallbackImg;
      }
    });
  });

  // 3. Mobile Navigation Drawer Toggle
  const mobileToggle = document.querySelector(".mobile-menu-toggle");
  const mobileDrawer = document.querySelector(".mobile-nav-drawer");
  if (mobileToggle && mobileDrawer) {
    mobileToggle.addEventListener("click", () => {
      mobileDrawer.classList.toggle("open");
      const isOpen = mobileDrawer.classList.contains("open");
      mobileToggle.setAttribute("aria-expanded", isOpen);
      mobileToggle.innerHTML = isOpen ? "✕" : "☰";
    });
  }

  // 4. Reading Progress Bar (on article pages)
  const progressBar = document.querySelector(".reading-progress-bar");
  if (progressBar) {
    window.addEventListener("scroll", () => {
      const winScroll = document.documentElement.scrollTop || document.body.scrollTop;
      const height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
      const scrolled = height > 0 ? (winScroll / height) * 100 : 0;
      progressBar.style.width = Math.min(scrolled, 100) + "%";
    }, { passive: true });
  }

  // 5. Back to Top Button
  const backToTopBtn = document.querySelector(".back-to-top");
  if (backToTopBtn) {
    window.addEventListener("scroll", () => {
      if (window.scrollY > 400) {
        backToTopBtn.classList.add("visible");
      } else {
        backToTopBtn.classList.remove("visible");
      }
    }, { passive: true });

    backToTopBtn.addEventListener("click", () => {
      window.scrollTo({ top: 0, behavior: "smooth" });
    });
  }

  // 6. Search Modal & Live Search Engine
  const searchTriggers = document.querySelectorAll(".search-trigger-btn");
  const searchOverlay = document.querySelector(".search-modal-overlay");
  const searchClose = document.querySelector(".search-close-btn");
  const searchInput = document.querySelector(".search-input-field");
  const searchResults = document.querySelector(".search-results-list");

  function openSearch() {
    if (searchOverlay) {
      searchOverlay.classList.add("active");
      if (searchInput) {
        searchInput.focus();
        if (searchInput.value.trim() === "") {
          renderSearchResults("");
        }
      }
    }
  }

  function closeSearch() {
    if (searchOverlay) {
      searchOverlay.classList.remove("active");
    }
  }

  if (searchTriggers) {
    searchTriggers.forEach(btn => btn.addEventListener("click", openSearch));
  }
  if (searchClose) {
    searchClose.addEventListener("click", closeSearch);
  }
  if (searchOverlay) {
    searchOverlay.addEventListener("click", (e) => {
      if (e.target === searchOverlay) closeSearch();
    });
  }

  // Global Keyboard Shortcut: Ctrl+K or Cmd+K
  document.addEventListener("keydown", (e) => {
    if ((e.ctrlKey || e.metaKey) && e.key.toLowerCase() === "k") {
      e.preventDefault();
      openSearch();
    }
    if (e.key === "Escape" && searchOverlay && searchOverlay.classList.contains("active")) {
      closeSearch();
    }
  });

  function renderSearchResults(query) {
    if (!searchResults || typeof ARTICLES_DATA === "undefined") return;

    const q = query.trim().toLowerCase();
    let matches = [];

    if (!q) {
      // Show top 5 latest
      matches = ARTICLES_DATA.slice(0, 5);
    } else {
      matches = ARTICLES_DATA.filter(article => {
        return article.title.toLowerCase().includes(q) ||
               article.excerpt.toLowerCase().includes(q) ||
               article.category.toLowerCase().includes(q) ||
               article.author.name.toLowerCase().includes(q) ||
               (article.tags && article.tags.some(t => t.toLowerCase().includes(q)));
      });
    }

    if (matches.length === 0) {
      searchResults.innerHTML = `
        <div style="padding: 24px; text-align: center; color: var(--text-muted);">
          <p>No articles found matching "<strong>${escapeHtml(query)}</strong>"</p>
          <p style="font-size: 0.8rem; margin-top: 6px;">Try searching for "Quantum", "LLM", "Security", or "Robotics"</p>
        </div>
      `;
      return;
    }

    searchResults.innerHTML = matches.map(article => `
      <a href="${basePath}articles/${article.slug}" class="search-result-item">
        <img class="search-result-thumb" src="${basePath}assets/images/${article.image}" alt="${escapeHtml(article.title)}" onerror="this.src='${fallbackImg}'">
        <div class="search-result-info">
          <span class="search-result-category">${escapeHtml(article.category)}</span>
          <div class="search-result-title">${escapeHtml(article.title)}</div>
          <div style="font-size: 0.75rem; color: var(--text-muted); margin-top: 4px;">
            By ${escapeHtml(article.author.name)} · ${article.readTime}
          </div>
        </div>
      </a>
    `).join("");
  }

  if (searchInput) {
    searchInput.addEventListener("input", (e) => {
      renderSearchResults(e.target.value);
    });
  }

  // 7. Toast Notification Utility
  function showToast(message) {
    let toast = document.querySelector(".toast-notice");
    if (!toast) {
      toast = document.createElement("div");
      toast.className = "toast-notice";
      document.body.appendChild(toast);
    }
    toast.innerHTML = `<span>✓</span> <span>${escapeHtml(message)}</span>`;
    toast.classList.add("show");
    setTimeout(() => {
      toast.classList.remove("show");
    }, 3200);
  }

  // 8. Share / Copy Link Button
  const shareButtons = document.querySelectorAll(".btn-copy-link");
  shareButtons.forEach(btn => {
    btn.addEventListener("click", () => {
      const url = window.location.href;
      if (navigator.clipboard) {
        navigator.clipboard.writeText(url).then(() => {
          showToast("Article link copied to clipboard!");
        }).catch(() => {
          fallbackCopyText(url);
        });
      } else {
        fallbackCopyText(url);
      }
    });
  });

  function fallbackCopyText(text) {
    const textArea = document.createElement("textarea");
    textArea.value = text;
    textArea.style.position = "fixed";
    document.body.appendChild(textArea);
    textArea.focus();
    textArea.select();
    try {
      document.execCommand("copy");
      showToast("Article link copied to clipboard!");
    } catch (err) {
      alert("Article link: " + text);
    }
    document.body.removeChild(textArea);
  }

  // 9. Newsletter Subscription Handler
  const newsletterForms = document.querySelectorAll(".newsletter-form");
  newsletterForms.forEach(form => {
    form.addEventListener("submit", (e) => {
      e.preventDefault();
      const emailInput = form.querySelector("input[type='email']");
      if (emailInput && emailInput.value.trim()) {
        const email = emailInput.value.trim();
        showToast(`Subscribed! Weekly briefing dispatched to ${email}`);
        emailInput.value = "";
      }
    });
  });

  // 10. Contact Form Handler
  const contactForm = document.querySelector("#contact-page-form");
  if (contactForm) {
    contactForm.addEventListener("submit", (e) => {
      e.preventDefault();
      const name = contactForm.querySelector("#contact-name")?.value || "";
      showToast(`Thank you, ${name}! Your inquiry has been forwarded to our editorial desk.`);
      contactForm.reset();
    });
  }

  // Utility to escape HTML
  function escapeHtml(str) {
    return String(str || "")
      .replace(/&/g, "&amp;")
      .replace(/</g, "&lt;")
      .replace(/>/g, "&gt;")
      .replace(/"/g, "&quot;")
      .replace(/'/g, "&#039;");
  }
});
