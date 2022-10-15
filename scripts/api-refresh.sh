#!/usr/bin/env bash

# Use the schema downloaded by `api-full-refresh`
# This is much faster than taking to the API for a fresh schema.
elm-gql run ./api/GitHub/schema.json --namespace GitHub