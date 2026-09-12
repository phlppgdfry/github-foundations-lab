#!/usr/bin/env bash
set -euo pipefail

required_files=(
  README.md
  LICENSE
  CONTRIBUTING.md
  CODE_OF_CONDUCT.md
  SECURITY.md
  docs/learning-path.md
  docs/repository-settings-checklist.md
  docs/key-distinctions.md
  labs/README.md
  study/exam-objectives.md
  study/github-learn.md
  study/progress-log.md
  study/self-checks.md
  study/weak-topics.md
  labs/08-accounts-organizations-security.md
  labs/09-ecosystem-open-source.md
  labs/10-copilot-github-dev.md
  .github/dependabot.yml
  .devcontainer/devcontainer.json
  .github/workflows/repository-check.yml
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
done

if ! grep -q "GitHub Foundations" README.md; then
  echo "README must explain the lab." >&2
  exit 1
fi

echo "Repository structure is ready for GH-900 practice."
