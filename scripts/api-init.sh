#!/usr/bin/env bash

# Same as Full Refresh, but creates a few files that you will need to manage once they're created.
# This repo has already done this part, but I figured it's useful to see it!
elm-gql init https://api.github.com/graphql --namespace GitHub --header "Authorization: bearer $GITHUB_ACCESS_TOKEN"