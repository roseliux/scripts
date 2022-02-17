#!/usr/bin/env bash

echo "Running pre-push hook"

./scripts/run-brakeman.sh
./scripts/run-tests.sh

if [ $? -ne 0 ]; then
  echo "Brakemant and tests must pass before pushing..."
  exit 1
fi