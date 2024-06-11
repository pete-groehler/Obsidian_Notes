#!/bin/bash

# Configuration
VAULT_PATH=/c/Users/The Groehlers/Downloads/obsidian-osint-templates-main/UM Bootcamp  # Change this to your Obsidian vault path
REPO_URL=https://github.com/pete-groehler/Obsidian_Notes/tree/master  # Change this to your GitHub repository URL
BRANCH_NAME=main
COMMIT_MESSAGE="Update Obsidian vault"  # Default commit message

# Navigate to the Obsidian vault directory
cd "$VAULT_PATH" || { echo "Vault path not found!"; exit 1; }

# Check if the directory is a git repository
if [ ! -d ".git" ]; then
  echo "Initializing new Git repository..."
  git init
  git remote add origin "$REPO_URL"
fi

# Fetch the latest changes from the remote repository
git fetch origin
git merge origin/$BRANCH_NAME

# Add all changes to staging
git add .

# Check for changes
if ! git diff-index --quiet HEAD --; then
  # Commit the changes if there are any
  git commit -m "$COMMIT_MESSAGE"
  
  # Push the changes to GitHub
  if git push origin "$BRANCH_NAME"; then
    echo "Obsidian vault pushed to GitHub successfully!"
  else
    echo "Failed to push changes. Please resolve any conflicts and try again."
  fi
else
  echo "No changes to commit."
fi


