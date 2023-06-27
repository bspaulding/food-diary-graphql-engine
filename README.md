food-diary-graphql-engine
=========================

This repo contains metadata and migrations for the hasura/graphql-engine backend for github.com/bspaulding/food-diary.

To run locally:

```
docker-compose up
```

You will need to export env vars for `HASURA_GRAPHQL_ADMIN_SECRET` and `HASURA_GRAPHQL_JWT_SECRET`.

To run the console:

```
hasura console --admin-secret $HASURA_GRAPHQL_ADMIN_SECRET
```

Make changes in the console, and commit any changes to migrations/metadata.

## Database Setup

If this is a new db, you will need to migrate and apply metadata:

```
hasura migrate apply --admin-secret $HASURA_GRAPHQL_ADMIN_SECRET
hasura metadata apply --admin-secret $HASURA_GRAPHQL_ADMIN_SECRET
```
