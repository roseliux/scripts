#!/usr/bin/env bash

GIT_DIR=$(git rev-parse --git-dir)

echo "Installing git hooks..."

ln -s ../../scripts/prepare-commit-msg.sh $GIT_DIR/hooks/prepare-commit-msg
ln -s ../../scripts/pre-commit.sh $GIT_DIR/hooks/pre-commit
ln -s ../../scripts/pre-push.sh $GIT_DIR/hooks/pre-push

echo "Completed!"