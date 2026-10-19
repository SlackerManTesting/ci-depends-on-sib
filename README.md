# ci-depends-on-sib

Sibling repository of the `ci-depends-on-repro` security-research testbed (operator-owned, fictional ACME-CI
brand). In the modeled configuration, a `Depends-On: SlackerManTesting/ci-depends-on-sib#<N>` line in a base-repo
PR body makes the consumer workflow fetch this repository's `refs/pull/N/merge` and execute its contents.

Baseline tree: `script/hello.sh` (dummy). Pull requests that add `script/execute.sh` demonstrate the executed
content leg.