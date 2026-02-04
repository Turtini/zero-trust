#!/usr/bin/env bash
set -euo pipefail

# Run from repo root even if executed elsewhere
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${REPO_ROOT}"

# Where we put exports
EXPORT_DIR="exports"
mkdir -p "${EXPORT_DIR}"

# Output names:
# - a dated snapshot (immutable)
# - a "latest" file (always overwritten)
DATE_TAG="$(date -u +%Y-%m-%d)"
OUT_SNAPSHOT="${EXPORT_DIR}/zero-trust-architecture-operational-reference-${DATE_TAG}.pdf"
OUT_LATEST="${EXPORT_DIR}/zero-trust-architecture-operational-reference-latest.pdf"

# Build a single "master" markdown in a temp file (ordered, predictable)
TMP_MD="$(mktemp)"
trap 'rm -f "${TMP_MD}"' EXIT

cat > "${TMP_MD}" <<'EOF'
% Zero Trust Architecture: Operational Reference
% Turtini LLC
% (Generated from repository sources)

EOF

# Optional: include the diagram near the top
# With xelatex, local images embed correctly.
if [[ -f "diagrams/ztmm-mapping.png" ]]; then
  cat >> "${TMP_MD}" <<'EOF'
![](diagrams/ztmm-mapping.png){ width=90% }

EOF
fi

# Append files in a deliberate order
FILES=(
  "README.md"
  "zero-trust-cisa-mapping.md"
  "mappings/cisa-pillars.md"
  "notes/implementation-considerations.md"
  "notes/common-antipatterns.md"
  "notes/day-2-operating-model.md"
  "notes/organizational-alignment.md"
  "notes/ownership-models.md"
)

for f in "${FILES[@]}"; do
  if [[ -f "${f}" ]]; then
    echo -e "\n\n---\n" >> "${TMP_MD}"
    echo -e "\n\n<!-- SOURCE: ${f} -->\n\n" >> "${TMP_MD}"
    cat "${f}" >> "${TMP_MD}"
  else
    echo "WARN: missing file '${f}' (skipping)" >&2
  fi
done

# Create PDF via pandoc + xelatex (stable in GitHub Actions)
pandoc "${TMP_MD}" \
  --from=gfm \
  --pdf-engine=xelatex \
  --include-in-header="styles/pdf-style.tex" \
  --metadata title="Zero Trust Architecture: Operational Reference" \
  --toc \
  -o "${OUT_SNAPSHOT}"

# Also write/update "latest"
cp -f "${OUT_SNAPSHOT}" "${OUT_LATEST}"

echo "Wrote:"
echo "  ${OUT_SNAPSHOT}"
echo "  ${OUT_LATEST}"

