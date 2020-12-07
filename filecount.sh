#!/bin/bash
if [[ "$#" < 1 ]]
then
  echo "error: must provide one argument"
  exit 1
fi
  if [-d "$1" ];
then
  echo "## Output of Assignment 4 by Eric Mallozzi ##"
  date +"Time and date: %F %T"
  symlinks=$(find $1 -type s | wc -l)
  files=$(find $1 -type f | wc -l)
  directs=$(find $1 -type d | wc -l)
  echo "Counting symlinks, files and directories in: $1"
  printf "Number of symlinks found: %d\n" $symlinks
  printf "Number of files found: %d\n" $files
  printf "Number of directories found: %d\n" $directs
  exit 1
else
  echo "error: $1 is not in a directory"
  ls -l $1
  exit 1
fi
