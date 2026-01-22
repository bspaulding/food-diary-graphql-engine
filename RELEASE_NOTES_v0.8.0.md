# Release v0.8.0

## Changes Since v0.7.1

This release includes the following changes:

- Updated GitHub Actions workflow to publish container images only to GitHub Container Registry (ghcr.io)
- Removed Docker Hub publishing from CI/CD pipeline
- Added container build and publish workflow for automated deployments
- Added trends_weekly view for analytics
- Added documentation and helper functions
- Added user_id to most_logged_entries with proper permissions

## Release Tag

The git tag `v0.8.0` has been created and is ready to be pushed to trigger the Docker image build workflow.

## Docker Image

Once the tag is pushed, a Docker image will be automatically built and published to:
- `ghcr.io/bspaulding/food-diary-graphql-engine:v0.8.0`

## Deployment

To deploy this release:

```bash
docker pull ghcr.io/bspaulding/food-diary-graphql-engine:v0.8.0
```

Or update your docker-compose.yml to reference the v0.8.0 tag.
