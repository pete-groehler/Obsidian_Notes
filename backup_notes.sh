#!/bin/bash

# Configuration
VAULT_PATH="/c/Users/The Groehlers/Downloads/obsidian-osint-templates-main/UM Bootcamp"
REPO_URL="https://github.com/pete-groehler/Obsidian_Notes"  # Change this to your GitHub repository URL
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

# Determine the default branch
DEFAULT_BRANCH=$(git remote show origin | awk '/HEAD branch/ {print $NF}')

# Check out the default branch
git checkout "$DEFAULT_BRANCH"

# Pull the latest changes and merge
if ! git pull origin "$DEFAULT_BRANCH"; then
  echo "Merge conflicts detected. Please resolve them manually."
  exit 1
fi

# Add all changes to staging
git add .

# Check for changes
if ! git diff-index --quiet HEAD --; then
  # Commit the changes if there are any
  git commit -m "$COMMIT_MESSAGE"

  # Push the changes to GitHub
  if git push origin "$DEFAULT_BRANCH"; then
    echo "Obsidian vault pushed to GitHub successfully!"
  else
    echo "Failed to push changes to GitHub."
  fi
else
  echo "No changes to commit."
fi

