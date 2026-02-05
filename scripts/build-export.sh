#!/usr/bin/env bash
set -euo pipefail

EXPORT_DIR="exports"
mkdir -p "${EXPORT_DIR}"

DATE_TAG="$(date -u +%Y-%m-%d)"
OUT_SNAPSHOT="${EXPORT_DIR}/zero-trust-architecture-operational-reference-${DATE_TAG}.pdf"
OUT_LATEST="${EXPORT_DIR}/zero-trust-architecture-operational-reference-latest.pdf"

TMP_MD="$(mktemp)"
trap 'rm -f "${TMP_MD}"' EXIT

cat > "${TMP_MD}" <<'EOF'
% Zero Trust Architecture: Operational Reference
% Turtini LLC
% (Generated from repository sources)

EOF

cat >> "${TMP_MD}" <<'EOF'
![](diagrams/ztmm-mapping.png){ width=90% }

EOF

FILES=(
  "README.md"
  "zero-trust-cisa-mapping.md"
  "mappings/cisa-pillars.md"
  "notes/implementation-considerations.md"
  "notes/common-antipatterns.md"
  "notes/day-2-operating-model.md"
  "notes/ownership-models.md"
  "notes/organizational-alignment.md"
)

for f in "${FILES[@]}"; do
  echo -e "\n\n---\n" >> "${TMP_MD}"
  echo -e "\n\n<!-- SOURCE: ${f} -->\n\n" >> "${TMP_MD}"
  cat "${f}" >> "${TMP_MD}"
done

# Portable PDF build via XeLaTeX (CI-safe)
pandoc "${TMP_MD}" \
  --from=gfm \
  --pdf-engine=xelatex \
  --include-in-header=styles/pdf-style.tex \
  --metadata title="Zero Trust Architecture: Operational Reference" \
  -o "${OUT_SNAPSHOT}"

cp -f "${OUT_SNAPSHOT}" "${OUT_LATEST}"

echo "Wrote:"
echo "  ${OUT_SNAPSHOT}"
echo "  ${OUT_LATEST}"

