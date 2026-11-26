#!/usr/bin/env bash
# Turns the dashboard's static build into a folder that a static host serves
# from its root: the wiki under /demo/, the root redirecting there, and a
# noindex header so search engines do not list the demo.
#
# Usage: assemble-demo-site.sh <dashboard build dir> <output dir>
set -euo pipefail

BUILD="$1"; OUT="$2"
[ -d "$BUILD/demo" ] || { echo "no demo/ in $BUILD" >&2; exit 1; }

rm -rf "$OUT"; mkdir -p "$OUT"
cp -R "$BUILD/demo" "$OUT/demo"

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
