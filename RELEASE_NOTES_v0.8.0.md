# Release v0.8.0

This document describes the changes included in the v0.8.0 release and provides instructions for creating the release tag.

## Changes Since v0.7.1

- **CI/CD Updates**: Updated GitHub Actions workflow to publish container images only to GitHub Container Registry (ghcr.io), removed Docker Hub publishing
- **Analytics**: Added `trends_weekly` view for weekly analytics tracking
- **Permissions**: Added `user_id` to `most_logged_entries` view with proper permissions
- **Documentation**: Added helper functions and documentation comments

## Creating the Release Tag

After this PR is merged to the `main` branch, create and push the v0.8.0 tag:

```bash
# Ensure you're on main and up to date
git checkout main
git pull origin main

# Create an annotated tag
git tag -a v0.8.0 -m "Release v0.8.0

Changes since v0.7.1:
- Updated workflow to publish only to ghcr.io
- Added trends_weekly view for analytics
- Added user_id to most_logged_entries with permissions"

# Push the tag to trigger the build workflow
git push origin v0.8.0
```

## Automated Build

Pushing the tag will automatically trigger the Docker image build workflow (`.github/workflows/publish.yaml`), which will:
1. Build the Docker image with Hasura GraphQL Engine
2. Publish to GitHub Container Registry as `ghcr.io/bspaulding/food-diary-graphql-engine:v0.8.0`

## Deployment

Once the workflow completes, deploy the new version:

```bash
docker pull ghcr.io/bspaulding/food-diary-graphql-engine:v0.8.0
```

Or update your `docker-compose.yml` to reference the `v0.8.0` tag.
