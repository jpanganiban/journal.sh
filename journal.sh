#!/bin/bash

# Configuration variables
JOURNAL_PATH=${JOURNAL_PATH:-~/.journal_entries}

# Retrieve the current date.
filename=$(date +"%m-%d-%y")

# Checks if the user has already written in his journal.
function has_written_today() {
  if [[ -s ${JOURNAL_PATH}/${filename} ]];
  then
    echo true
    exit 0
  else
    echo false
    exit 1
  fi;
}

# Check if the user has not written something today.
if [ $(has_written_today) = false ] ; then
  # Send a message to the user.
  echo "Please write a new entry to your journal entry (${filename})"
  echo "Will proceed to use \${EDITOR}: ${EDITOR} [ENTER]"
  read
  $EDITOR ${JOURNAL_PATH}/${filename}
fi
