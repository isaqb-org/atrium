#!/usr/bin/env bash
# Turns the dashboard's static build into a folder that a static host serves
# from its root: the wiki under /demo/, the root redirecting there, and a
# noindex header so search engines do not list the demo.
#
# Usage: assemble-demo-site.sh <dashboard build dir> <output dir> [<wiki dir>]
#
# With <wiki dir>, the footer of every page names the content version: the
# wiki's commit (short id and date). CONTENT_REPO_URL, if set, links the id
# to that commit, e.g. https://github.com/isaqb-org/atrium.
#
# SITE_TITLE, if set, names the project in the footer ("Read-only dashboard
# for <SITE_TITLE> LLM wiki") instead of the product name.
set -euo pipefail

BUILD="$1"; OUT="$2"; WIKI="${3:-}"
[ -d "$BUILD/demo" ] || { echo "no demo/ in $BUILD" >&2; exit 1; }

rm -rf "$OUT"; mkdir -p "$OUT"
cp -R "$BUILD/demo" "$OUT/demo"

# Footer: the project's name, and "read-only" only once.
export SITE_TITLE="${SITE_TITLE:-}"
find "$OUT/demo" -name '*.html' -print0 | xargs -0 perl -pi -e '
  s{(<span class="foot-title">Read-only dashboard for )Systems42( <a )}{$1$ENV{SITE_TITLE}$2}g if $ENV{SITE_TITLE};
  s{(<span class="presence-unit">Static demo) · read-only(</span>)}{$1$2}g;'

# Content version in the footer, next to the dashboard version.
if [ -n "$WIKI" ]; then
  sha=$(git -C "$WIKI" rev-parse HEAD)
  export CONTENT_SHORT="${sha:0:7}"
  export CONTENT_DATE=$(git -C "$WIKI" log -1 --format=%cs)
  export CONTENT_LINK=""
  [ -n "${CONTENT_REPO_URL:-}" ] && CONTENT_LINK="${CONTENT_REPO_URL%/}/commit/$sha"
  find "$OUT/demo" -name '*.html' -print0 | xargs -0 perl -pi -e '
    BEGIN {
      my $id = $ENV{CONTENT_LINK} ? qq{<a href="$ENV{CONTENT_LINK}">$ENV{CONTENT_SHORT}</a>} : $ENV{CONTENT_SHORT};
      $c = qq{<span title="Wiki commit the content was built from">Content $id ($ENV{CONTENT_DATE})</span> ·};
    }
    s{(<a href="/demo/help/">Help</a> ·)}{$1\n      $c}g;'
  echo "content version $CONTENT_SHORT ($CONTENT_DATE)"
fi

# The demo bar links to the product site's root; on this host they would be dead.
find "$OUT/demo" -name '*.html' -print0 | xargs -0 perl -pi -e '
  s{<a href="/">← dashboard\.systems42\.org</a>}{<a href="https://dashboard.systems42.org/">← dashboard.systems42.org</a>}g;
  s{<a href="/docs/">Docs</a>}{<a href="https://dashboard.systems42.org/docs/">Docs</a>}g;
  s{<a href="/downloads/">Downloads</a>}{<a href="https://dashboard.systems42.org/downloads/">Downloads</a>}g;'

# Netlify: redirect the root, keep search engines out.
printf '/  /demo/  302\n' > "$OUT/_redirects"
printf '/*\n  X-Robots-Tag: noindex\n' > "$OUT/_headers"

# Fallback for hosts that ignore _redirects.
cat > "$OUT/index.html" <<'HTML'
<!doctype html>
<meta charset="utf-8">
<meta name="robots" content="noindex">
<title>atrium requirements</title>
<meta http-equiv="refresh" content="0; url=/demo/">
<a href="/demo/">atrium requirements</a>
HTML

echo "assembled $OUT ($(du -sh "$OUT" | cut -f1))"
