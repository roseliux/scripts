#!/usr/bin/env bash

# Get the ticket number from branch name and add as commit message
# Example branch name `feature/JIRA-123-cool-stuff`
# then automatic commit message will have `JIRA-123: `

FILE=$1
MESSAGE=$(cat $FILE)
TICKET=$(git rev-parse --abbrev-ref HEAD | grep -Eo '^(\w+/)?(\w+[-_])?\d+' | grep -Eo '(\w+[-])?\d+' | tr "[:lower:]" "[:upper:]")
if [[ $TICKET == "[]" || "$MESSAGE" == "$TICKET"* ]];then
  exit 0;
fi

echo "$TICKET: $MESSAGE" > $FILE