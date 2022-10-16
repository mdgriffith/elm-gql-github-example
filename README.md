# An Elm GQL Example using Github

Github has a GraphQL API, how cool!

This repo shows how to get started using `elm-gql`, which takes GraphQL and generates Elm code for you to use in your Elm project.

We're going to request a bunch of data for a repo!

## Getting Started

First up, you'll need to generate a _personal access token_.

For reference, here is the [Github GraphQL doc on getting started](https://docs.github.com/en/graphql/guides/forming-calls-with-graphql), and here are [instructions on how to get a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).

I only selected the permissions:

- read:user
- public_repo

Once you have your token, you'll need to add it to your shell environment as the variable `GITHUB_ACCESS_TOKEN`

The quickest way is to do `export GITHUB_ACCESS_TOKEN={your_github_token}` in your shell. However, this is only temporary and will go away if you close your terminal.

> **Info**
> Managing environment variables is a pain. For a real project, I'd recommend cehcking out [`direnv`](https://direnv.net/)!

## The Commands

First run `npm install` to install `elm-gql` for this project.

Then, there are three scripts in the `scripts/` folder of the the example repo.

1. `npm run api:init` - This gets you started with a new `elm-gql` project. Note, this has already been run for this repo, so you don't need to run it, but it seemed like something that should be included for reference.
2. `npm run api:refresh` - This will request a brand new schema from the GitHub API. This takes ~5 seconds and you probably don't need to do this very often as the schema doesn't change. Though you should do this when building things in CI!
3. `npm run api` - This will look for any `.graphql` or `.gql` files in the `src` directory and generate Elm for them. This is the command that you'll want to run when writing your queries and mutations.

## Checked in Files

This example repo has all generated files checked in, though that's just so that it's easy to reference things.

For your project, you'll want to check in the `src/Github.elm` file that is generated on `elm-gql init`, but everything else should probably be ignored via `.gitignore`.

## Exploring a Schema

If you're new to GraphQL, one of the advantages is having access to the schema to know what sorts of queries you can make.

For GitHub, you can either check out their [Explorere](https://docs.github.com/en/graphql/overview/explorer), which will allow you to interactively explore the schema.

Or the static version of then[Github API documentation](https://docs.github.com/en/graphql/reference/queries).
