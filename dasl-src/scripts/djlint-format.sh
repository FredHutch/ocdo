#!/bin/bash

# djLint wrapper script for Zed editor integration
# This script reads HTML content from stdin, formats it with djLint, and outputs to stdout

set -e

# Create a temporary file with .html extension so djLint recognizes it properly
TEMP_FILE=$(mktemp).html
trap 'rm -f $TEMP_FILE' EXIT

# Read from stdin and write to temp file
cat > "$TEMP_FILE"

# Format with djLint and output to stdout
uv tool run djlint "$TEMP_FILE" \
  --reformat \
  --quiet \
  --profile=jinja \
  --indent=2 \
  --preserve-blank-lines \
  --configuration=uv.toml || true

cat "$TEMP_FILE"
