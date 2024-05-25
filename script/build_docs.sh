#!/usr/bin/env bash

echo "Moving top level markdown files into 'docs' folder"
cat README.md | sed 's/(docs\//(/g' | sed 's/CONTRIBUTING.md/contributing.md/g' > docs/index.md
cat CHANGELOG.md | sed 's/(docs\//(/g' > docs/changelog.md
cp CONTRIBUTING.md docs/contributing.md
