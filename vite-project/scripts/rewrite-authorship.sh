#!/usr/bin/env bash
set -euo pipefail

: "${OLD_EMAIL:?Set OLD_EMAIL to the contributor email to replace}"
: "${NEW_EMAIL:?Set NEW_EMAIL to your GitHub noreply email}"
NEW_NAME="${NEW_NAME:-Sayed Sadiq45}"

if ! git rev-parse --show-toplevel >/dev/null 2>&1; then
  echo "Run this script from inside a Git repository." >&2
  exit 1
fi

if ! command -v git-filter-repo >/dev/null 2>&1; then
  echo "git-filter-repo is required. Install it from https://github.com/newren/git-filter-repo." >&2
  exit 1
fi

repo_root="$(git rev-parse --show-toplevel)"
current_branch="$(git branch --show-current)"

cat <<EOF
This will rewrite every commit in:
  $repo_root

Matching author and committer email:
  $OLD_EMAIL
Replacement identity:
  $NEW_NAME <$NEW_EMAIL>

All commit IDs will change. Create a backup clone before continuing.
EOF

read -r -p "Type REWRITE to continue: " confirmation
if [[ "$confirmation" != "REWRITE" ]]; then
  echo "Aborted."
  exit 1
fi

export OLD_EMAIL NEW_EMAIL NEW_NAME

git filter-repo --force --commit-callback '
old_email = commit.author_email.decode("utf-8", "replace")
old_committer_email = commit.committer_email.decode("utf-8", "replace")
if old_email == os.environ["OLD_EMAIL"]:
    commit.author_name = os.environ["NEW_NAME"].encode()
    commit.author_email = os.environ["NEW_EMAIL"].encode()
if old_committer_email == os.environ["OLD_EMAIL"]:
    commit.committer_name = os.environ["NEW_NAME"].encode()
    commit.committer_email = os.environ["NEW_EMAIL"].encode()
'

echo
printf 'History rewritten. Current branch: %s\n' "${current_branch:-detached HEAD}"
echo "Review the result, then push rewritten history explicitly:"
echo "  git log --format='%h %an <%ae> | %cn <%ce>'"
echo "  git push --force-with-lease origin ${current_branch:-main}"
