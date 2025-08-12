#!/bin/bash
#
# setup-onepush.sh
# ----------------
# This script sets up a local Git alias called `onepush` for this repository.
#
# USAGE:
#   1. Make sure you are inside the repository folder.
#   2. Run the script:
#        ./setup-onepush.sh
#
#   After running, you can commit changes with a single commit history by using:
#        git onepush
#
# ALIAS DESCRIPTION:
#   git onepush → Stages all changes, amends the last commit (no new commits),
#                 and force-pushes to the remote 'master' branch.
#
# NOTE:
#   - This alias is local to this repository only.
#   - You must re-run this script if you reclone the repository.
#   - Replace 'master' in the alias below if your branch name is different.

# Set the alias locally for this repository
git config alias.onepush '!git add . && git commit --amend --no-edit && git push --force origin master'

echo "✅ Alias 'onepush' has been set for this repository."
echo "You can now use: git onepush"
