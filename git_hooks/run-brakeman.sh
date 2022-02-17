#!/usr/bin/env bash

set -e

cd "${0%/*}/.."

echo "Running brakeman"

bundle exec brakeman -A -q -o brakeman.html