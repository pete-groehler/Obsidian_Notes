#!/bin/bash

# Change to your Obsidian vault directory
cd /c/Users/The Groehlers/Downloads/obsidian-osint-templates-main/UM Bootcamp

# Check for changes
git add .
changes=$(git status --porcelain)

# If there are changes, commit and push
if [ -n "$changes" ]; then
    git commit -m "Backup on $(date +'%Y-%m-%d %H:%M:%S')"
    git push origin master
else
    echo "No changes to commit."
fi

