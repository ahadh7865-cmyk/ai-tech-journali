/**
 * AI Tech Journal - Core Interactive Logic
 * Search, navigation, reading progress, share links, contact form.
 *
 * Asset paths are derived from this script's own URL, so every page works
 * regardless of how deep it sits in the folder tree.
 */
(function () {
  "use strict";

  var CONTACT_EMAIL = "ahadh7865@gmail.com";

  function getSiteBase() {
    var script = document.querySelector('script[src*="assets/js/main.js"]');
    if (script && script.src) {
      var url = new URL(script.src, window.location.href);
      return url.href.replace(/assets\/js\/main\.js(?:\?.*)?$/, "");
    }
    return new URL("./", window.location.href).href;
  }

  var SITE_BASE = getSiteBase();
  var FALLBACK_SRC = SITE_BASE + "assets/images/fallback-image.svg";

  function escapeHtml(str) {
    return String(str || "")
      .replace(/&/g, "&amp;")
      .replace(/</g, "&lt;")
      .replace(/>/g, "&gt;")
      .replace(/"/g, "&quot;")
      .replace(/'/g, "&#039;");
  }

  document.addEventListener("DOMContentLoaded", function () {
    /* ---------------------------------------------------------------
       1. Image fallback (guarded so a missing image can never loop)
       --------------------------------------------------------------- */
    document.querySelectorAll("img").forEach(function (img) {
      img.addEventListener("error", function () {
        if (img.dataset.fallbackApplied === "true") return;
        if (img.src === FALLBACK_SRC) return;
        img.dataset.fallbackApplied = "true";
        img.src = FALLBACK_SRC;
      });
    });

    /* ---------------------------------------------------------------
       2. Mobile navigation drawer
       --------------------------------------------------------------- */
    var mobileToggle = document.querySelector(".mobile-menu-toggle");
    var mobileDrawer = document.querySelector(".mobile-nav-drawer");

    function setDrawer(open) {
      if (!mobileToggle || !mobileDrawer) return;
      mobileDrawer.classList.toggle("open", open);
      mobileToggle.setAttribute("aria-expanded", open ? "true" : "false");
      mobileToggle.setAttribute("aria-label", open ? "Close navigation menu" : "Open navigation menu");
      document.body.style.overflow = open ? "hidden" : "";
    }

    if (mobileToggle && mobileDrawer) {
      mobileToggle.addEventListener("click", function () {
        setDrawer(!mobileDrawer.classList.contains("open"));
      });

      mobileDrawer.querySelectorAll("a").forEach(function (link) {
        link.addEventListener("click", function () {
          setDrawer(false);
        });
      });

      window.addEventListener("resize", function () {
        if (window.innerWidth > 1024 && mobileDrawer.classList.contains("open")) {
          setDrawer(false);
        }
      });
    }

    /* ---------------------------------------------------------------
       3. Reading progress bar
       --------------------------------------------------------------- */
    var progressBar = document.querySelector(".reading-progress-bar");
    if (progressBar) {
      window.addEventListener(
        "scroll",
        function () {
          var top = document.documentElement.scrollTop || document.body.scrollTop;
          var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
          var pct = height > 0 ? (top / height) * 100 : 0;
          progressBar.style.width = Math.min(pct, 100) + "%";
        },
        { passive: true }
      );
    }

    /* ---------------------------------------------------------------
       4. Back to top
       --------------------------------------------------------------- */
    var backToTopBtn = document.querySelector(".back-to-top");
    if (backToTopBtn) {
      window.addEventListener(
        "scroll",
        function () {
          backToTopBtn.classList.toggle("visible", window.scrollY > 400);
        },
        { passive: true }
      );

      backToTopBtn.addEventListener("click", function () {
        window.scrollTo({ top: 0, behavior: "smooth" });
      });
    }

    /* ---------------------------------------------------------------
       5. Search modal
       --------------------------------------------------------------- */
    var searchTriggers = document.querySelectorAll(".search-trigger-btn");
    var searchOverlay = document.querySelector(".search-modal-overlay");
    var searchClose = document.querySelector(".search-close-btn");
    var searchInput = document.querySelector(".search-input-field");
    var searchResults = document.querySelector(".search-results-list");
    var lastFocused = null;

    function openSearch() {
      if (!searchOverlay) return;
      lastFocused = document.activeElement;
      searchOverlay.classList.add("active");
      searchOverlay.setAttribute("aria-hidden", "false");
      if (searchInput) {
        searchInput.focus();
        if (searchInput.value.trim() === "") renderSearchResults("");
      }
    }

    function closeSearch() {
      if (!searchOverlay) return;
      searchOverlay.classList.remove("active");
      searchOverlay.setAttribute("aria-hidden", "true");
      if (lastFocused && typeof lastFocused.focus === "function") lastFocused.focus();
    }

    searchTriggers.forEach(function (btn) {
      btn.addEventListener("click", openSearch);
    });
    if (searchClose) searchClose.addEventListener("click", closeSearch);
    if (searchOverlay) {
      searchOverlay.setAttribute("aria-hidden", "true");
      searchOverlay.addEventListener("click", function (e) {
        if (e.target === searchOverlay) closeSearch();
      });
    }

    if (searchInput) {
      searchInput.addEventListener("input", function (e) {
        renderSearchResults(e.target.value);
      });
    }

    function renderSearchResults(query) {
      if (!searchResults || typeof ARTICLES_DATA === "undefined") return;

      var q = String(query || "").trim().toLowerCase();
      var matches = !q
        ? ARTICLES_DATA.slice(0, 5)
        : ARTICLES_DATA.filter(function (article) {
            return (
              article.title.toLowerCase().indexOf(q) !== -1 ||
              article.excerpt.toLowerCase().indexOf(q) !== -1 ||
              article.category.toLowerCase().indexOf(q) !== -1 ||
              article.author.name.toLowerCase().indexOf(q) !== -1 ||
              (article.tags && article.tags.some(function (t) { return t.toLowerCase().indexOf(q) !== -1; }))
            );
          });

      if (matches.length === 0) {
        searchResults.innerHTML =
          '<div style="padding:24px;text-align:center;color:var(--text-muted);">' +
          '<p>No articles found matching &quot;<strong>' + escapeHtml(query) + '</strong>&quot;</p>' +
          '<p style="font-size:0.8rem;margin-top:6px;">Try &quot;Quantum&quot;, &quot;LLM&quot;, &quot;Security&quot;, or &quot;Robotics&quot;.</p>' +
          "</div>";
        return;
      }

      searchResults.innerHTML = matches
        .map(function (article) {
          return (
            '<a href="' + SITE_BASE + "articles/" + encodeURIComponent(article.slug) + '" class="search-result-item">' +
            '<img class="search-result-thumb" src="' + SITE_BASE + "assets/images/" + encodeURIComponent(article.image) + '"' +
            ' alt="' + escapeHtml(article.title) + '" width="120" height="80" loading="lazy" decoding="async">' +
            '<div class="search-result-info">' +
            '<span class="search-result-category">' + escapeHtml(article.category) + "</span>" +
            '<div class="search-result-title">' + escapeHtml(article.title) + "</div>" +
            '<div style="font-size:0.75rem;color:var(--text-muted);margin-top:4px;">By ' +
            escapeHtml(article.author.name) + " &middot; " + escapeHtml(article.readTime) + "</div>" +
            "</div></a>"
          );
        })
        .join("");
    }

    /* ---------------------------------------------------------------
       6. Global keyboard shortcuts + focus trap
       --------------------------------------------------------------- */
    document.addEventListener("keydown", function (e) {
      if ((e.ctrlKey || e.metaKey) && e.key.toLowerCase() === "k") {
        e.preventDefault();
        openSearch();
        return;
      }

      if (e.key === "Escape") {
        if (searchOverlay && searchOverlay.classList.contains("active")) closeSearch();
        if (mobileDrawer && mobileDrawer.classList.contains("open")) setDrawer(false);
        return;
      }

      if (e.key === "Tab" && searchOverlay && searchOverlay.classList.contains("active")) {
        var focusables = searchOverlay.querySelectorAll(
          'input, button, a[href], [tabindex]:not([tabindex="-1"])'
        );
        if (!focusables.length) return;
        var first = focusables[0];
        var last = focusables[focusables.length - 1];
        if (e.shiftKey && document.activeElement === first) {
          e.preventDefault();
          last.focus();
        } else if (!e.shiftKey && document.activeElement === last) {
          e.preventDefault();
          first.focus();
        }
      }
    });

    /* ---------------------------------------------------------------
       7. Toast
       --------------------------------------------------------------- */
    function showToast(message) {
      var toast = document.querySelector(".toast-notice");
      if (!toast) {
        toast = document.createElement("div");
        toast.className = "toast-notice";
        toast.setAttribute("role", "status");
        document.body.appendChild(toast);
      }
      toast.innerHTML = "<span>" + escapeHtml(message) + "</span>";
      toast.classList.add("show");
      window.setTimeout(function () {
        toast.classList.remove("show");
      }, 3200);
    }

    /* ---------------------------------------------------------------
       8. Copy article link
       --------------------------------------------------------------- */
    document.querySelectorAll(".btn-copy-link").forEach(function (btn) {
      btn.addEventListener("click", function () {
        var url = window.location.href;
        if (navigator.clipboard && navigator.clipboard.writeText) {
          navigator.clipboard.writeText(url).then(
            function () { showToast("Article link copied to clipboard."); },
            function () { fallbackCopyText(url); }
          );
        } else {
          fallbackCopyText(url);
        }
      });
    });

    function fallbackCopyText(text) {
      var textArea = document.createElement("textarea");
      textArea.value = text;
      textArea.setAttribute("readonly", "");
      textArea.style.position = "fixed";
      textArea.style.opacity = "0";
      document.body.appendChild(textArea);
      textArea.select();
      try {
        document.execCommand("copy");
        showToast("Article link copied to clipboard.");
      } catch (err) {
        showToast("Copy failed. The link is in your address bar.");
      }
      document.body.removeChild(textArea);
    }

    /* ---------------------------------------------------------------
       9. Contact form - hands off to the visitor's email client.
          There is no server, so nothing is silently "sent".
       --------------------------------------------------------------- */
    var contactForm = document.querySelector("#contact-page-form");
    if (contactForm) {
      contactForm.addEventListener("submit", function (e) {
        e.preventDefault();
        var name = (contactForm.querySelector("#contact-name") || {}).value || "";
        var email = (contactForm.querySelector("#contact-email") || {}).value || "";
        var subjectSelect = contactForm.querySelector("#contact-subject");
        var topic = subjectSelect ? subjectSelect.options[subjectSelect.selectedIndex].text : "Website inquiry";
        var message = (contactForm.querySelector("#contact-message") || {}).value || "";

        var body =
          "Name: " + name + "\r\n" +
          "Reply to: " + email + "\r\n\r\n" +
          message;

        window.location.href =
          "mailto:" + CONTACT_EMAIL +
          "?subject=" + encodeURIComponent("[Website] " + topic) +
          "&body=" + encodeURIComponent(body);

        showToast("Opening your email app to send this message.");
      });
    }
  });
})();
