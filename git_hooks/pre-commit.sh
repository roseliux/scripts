#!/usr/bin/env bash

echo "Running pre-commit hook"

./scripts/run-rubocop.sh

if [ $? -ne 0 ]; then
  echo "Code must be clean before committing"
  exit 1
fi