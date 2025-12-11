function debounce(func, wait) {
  var timeout;

  return function () {
    var context = this;
    var args = arguments;
    clearTimeout(timeout);

    timeout = setTimeout(function () {
      timeout = null;
      func.apply(context, args);
    }, wait);
  };
}

// Modified teaser function for Fuse.js results
function makeTeaser(body, terms) {
  var TEASER_MAX_WORDS = 30;
  var CONTEXT_WORDS = 5; // Words before and after match

  if (!body || !terms || terms.length === 0) {
    return body ? body.substring(0, 150) + "..." : "";
  }

  var lowerBody = body.toLowerCase();
  var lowerTerms = terms.map(function (term) {
    return term.toLowerCase();
  });

  // Find the first occurrence of any search term
  var firstMatchIndex = -1;
  var matchedTerm = "";

  for (var i = 0; i < lowerTerms.length; i++) {
    var index = lowerBody.indexOf(lowerTerms[i]);
    if (index !== -1 && (firstMatchIndex === -1 || index < firstMatchIndex)) {
      firstMatchIndex = index;
      matchedTerm = lowerTerms[i];
    }
  }

  if (firstMatchIndex === -1) {
    // No matches found, return beginning of text
    return body.substring(0, 150) + "...";
  }

  // Find word boundaries around the match
  var words = body.split(/\s+/);
  var matchWordIndex = -1;
  var currentIndex = 0;

  for (var i = 0; i < words.length; i++) {
    if (
      currentIndex <= firstMatchIndex &&
      currentIndex + words[i].length > firstMatchIndex
    ) {
      matchWordIndex = i;
      break;
    }
    currentIndex += words[i].length + 1; // +1 for space
  }

  if (matchWordIndex === -1) {
    return body.substring(0, 150) + "...";
  }

  // Extract context around the match
  var startIndex = Math.max(0, matchWordIndex - CONTEXT_WORDS);
  var endIndex = Math.min(words.length, matchWordIndex + CONTEXT_WORDS + 1);
  var contextWords = words.slice(startIndex, endIndex);

  // Highlight matching terms
  var teaser = contextWords.join(" ");
  for (var i = 0; i < lowerTerms.length; i++) {
    var term = lowerTerms[i];
    var regex = new RegExp("(" + escapeRegExp(term) + ")", "gi");
    teaser = teaser.replace(regex, "<b>$1</b>");
  }

  var prefix = startIndex > 0 ? "..." : "";
  var suffix = endIndex < words.length ? "..." : "";

  return prefix + teaser + suffix;
}

function escapeRegExp(string) {
  return string.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function formatSearchResultItem(item, terms) {
  // Convert absolute URLs to relative URLs for local development
  var url = item.item.url || item.item.ref || "#";
  if (url.startsWith("https://ocdo.fredhutch.org")) {
    url = url.replace("https://ocdo.fredhutch.org", "");
    if (url === "") {
      url = "./";
    }
  }

  return (
    '<div class="search-results__item">' +
    `<a href="${url}">${item.item.title}</a>` +
    `<div>${makeTeaser(item.item.body || item.item.content, terms)}</div>` +
    "</div>"
  );
}

function initSearch() {
  var $searchInput = document.getElementById("search");
  var $searchResults = document.querySelectorAll(".search-results");
  var $searchResultsItems = document.querySelectorAll(".search-results__items");
  var $searchClear = document.getElementById("search-clear");
  var MAX_ITEMS = 10;

  var currentTerm = "";
  var fuse;

  var initFuse = async function () {
    if (fuse === undefined) {
      try {
        var response = await fetch("/dasl/search_index.en.json");
        var searchData = await response.json();

        // Fuse.js options for whole word matching
        var options = {
          keys: [
            {
              name: "title",
              weight: 0.7,
            },
            {
              name: "body",
              weight: 0.3,
            },
          ],
          threshold: 0.4, // Allow some fuzzy matching
          distance: 500,
          minMatchCharLength: 2,
          includeScore: true,
          includeMatches: true,
          ignoreLocation: true,
          findAllMatches: true,
          useExtendedSearch: false,
        };

        fuse = new Fuse(searchData, options);
      } catch (error) {
        console.error("Failed to load search index:", error);
        return null;
      }
    }
    return fuse;
  };

  $searchInput.addEventListener(
    "keyup",
    debounce(async function () {
      var term = $searchInput.value.trim();
      if (term === currentTerm) {
        return;
      }

      currentTerm = term;

      if (term === "") {
        $searchResults.forEach(function (container) {
          container.style.display = "none";
        });
        $searchResultsItems.forEach(function (items) {
          items.innerHTML = "";
        });
        return;
      }

      var fuseInstance = await initFuse();
      if (!fuseInstance) {
        return;
      }

      var results = fuseInstance.search(term);

      // Filter results to only include whole word matches
      var searchTerms = term
        .toLowerCase()
        .split(/\s+/)
        .filter(function (t) {
          return t.length > 0;
        });

      results = results.filter(function (result) {
        var item = result.item;
        var title = (item.title || "").toLowerCase();
        var body = (item.body || item.content || "").toLowerCase();
        var fullText = title + " " + body;

        // Check if all search terms appear as whole words
        return searchTerms.every(function (searchTerm) {
          var regex = new RegExp("\\b" + escapeRegExp(searchTerm) + "\\b", "i");
          return regex.test(fullText);
        });
      });

      if (results.length === 0) {
        $searchResults.forEach(function (container) {
          container.style.display = "none";
        });
        $searchResultsItems.forEach(function (items) {
          items.innerHTML = "";
        });
        return;
      }

      $searchResults.forEach(function (container) {
        container.style.display = "block";
      });
      $searchResultsItems.forEach(function (items) {
        items.innerHTML = "";
      });

      var searchTerms = term.split(/\s+/).filter(function (t) {
        return t.length > 0;
      });

      for (var i = 0; i < Math.min(results.length, MAX_ITEMS); i++) {
        var item = document.createElement("li");
        item.innerHTML = formatSearchResultItem(results[i], searchTerms);
        $searchResultsItems.forEach(function (items) {
          var clonedItem = item.cloneNode(true);
          items.appendChild(clonedItem);
        });
      }
    }, 150),
  );

  // Handle clear button functionality
  $searchInput.addEventListener("input", function () {
    var hasValue = $searchInput.value.trim().length > 0;
    if ($searchClear) {
      $searchClear.style.display = hasValue ? "block" : "none";
    }
  });

  if ($searchClear) {
    $searchClear.addEventListener("click", function () {
      $searchInput.value = "";
      $searchResults.forEach(function (container) {
        container.style.display = "none";
      });
      $searchResultsItems.forEach(function (items) {
        items.innerHTML = "";
      });
      $searchClear.style.display = "none";
      currentTerm = "";
      $searchInput.focus();
    });
  }

  // Handle clear button functionality
  $searchInput.addEventListener("input", function () {
    var hasValue = $searchInput.value.trim().length > 0;
    if ($searchClear) {
      $searchClear.style.display = hasValue ? "block" : "none";
    }
  });

  if ($searchClear) {
    $searchClear.addEventListener("click", function () {
      $searchInput.value = "";
      $searchResults.forEach(function (container) {
        container.style.display = "none";
      });
      $searchResultsItems.forEach(function (items) {
        items.innerHTML = "";
      });
      $searchClear.style.display = "none";
      currentTerm = "";
      $searchInput.focus();
    });
  }

  // Hide search results when clicking outside
  window.addEventListener("click", function (e) {
    var shouldHide = false;
    var isOutsideSearch = !$searchInput.contains(e.target);

    $searchResults.forEach(function (container) {
      if (
        container.style.display === "block" &&
        !container.contains(e.target) &&
        isOutsideSearch
      ) {
        shouldHide = true;
      }
    });

    if (shouldHide) {
      $searchResults.forEach(function (container) {
        container.style.display = "none";
      });
    }
  });
}

// Add keyboard shortcuts to focus search
function initKeyboardShortcuts() {
  document.addEventListener("keydown", function (e) {
    // Ctrl/Cmd+K or "/" to focus search
    if ((e.ctrlKey || e.metaKey) && e.key === "k") {
      e.preventDefault();
      document.getElementById("search").focus();
    } else if (e.key === "/" && !isInputFocused()) {
      e.preventDefault();
      document.getElementById("search").focus();
    }

    // Escape to blur search and hide results
    if (e.key === "Escape") {
      const searchInput = document.getElementById("search");
      const searchResults = document.querySelectorAll(".search-results");
      const searchClear = document.getElementById("search-clear");

      if (searchInput) {
        searchInput.blur();
      }
      searchResults.forEach(function (container) {
        container.style.display = "none";
      });
      if (searchClear) {
        searchClear.style.display = "none";
      }
    }
  });
}

function isInputFocused() {
  const activeElement = document.activeElement;
  return (
    activeElement &&
    (activeElement.tagName === "INPUT" ||
      activeElement.tagName === "TEXTAREA" ||
      activeElement.isContentEditable)
  );
}

if (
  document.readyState === "complete" ||
  (document.readyState !== "loading" && !document.documentElement.doScroll)
) {
  initSearch();
  initKeyboardShortcuts();
} else {
  document.addEventListener("DOMContentLoaded", function () {
    initSearch();
    initKeyboardShortcuts();
  });
}
