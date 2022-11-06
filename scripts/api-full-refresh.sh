#!/usr/bin/env bash

# Request the entire schema from the Github API.
# This takes a decent amount of time (5 seconds last time I tried)
# And the schema doesn't change very often, so you don't need to do this in your dev loop.
# This is what you want to run in CI though.
elm-gql run https://api.github.com/graphql --namespace GitHub --header "Authorization: bearer $GITHUB_ACCESS_TOKEN"