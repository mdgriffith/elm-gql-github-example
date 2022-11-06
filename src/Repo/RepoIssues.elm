module Repo.RepoIssues exposing (Edges, Input, Issues, Repository, Response, query)

{-| 
This file is generated from src/Repo.graphql using `elm-gql`

Please avoid modifying directly.


@docs Input

@docs Response

@docs query

@docs Edges, Issues, Repository


-}


import GitHub
import GitHub.Enum.IssueState
import GraphQL.Engine
import Json.Decode
import Json.Encode
import Repo.Fragments.Issue


type alias Input =
    { repoOwner : String
    , repoName : String
    , issueCount : Int
    , states : List GitHub.Enum.IssueState.IssueState
    }


query : Input -> GitHub.Query Response
query args =
    GraphQL.Engine.bakeToSelection
        (Just "RepoIssues")
        (\version_ ->
            { args =
                GraphQL.Engine.inputObjectToFieldList
                    (GraphQL.Engine.inputObject "Input"
                        |> GraphQL.Engine.addField
                            "states"
                            "[IssueState!]!"
                            (Json.Encode.list
                                GitHub.Enum.IssueState.encode
                                args.states
                            )
                        |> GraphQL.Engine.addField
                            "issueCount"
                            "Int!"
                            (Json.Encode.int args.issueCount)
                        |> GraphQL.Engine.addField
                            "repoName"
                            "String!"
                            (Json.Encode.string args.repoName)
                        |> GraphQL.Engine.addField
                            "repoOwner"
                            "String!"
                            (Json.Encode.string args.repoOwner)
                    )
            , body = toPayload_ version_
            , fragments = toFragments_ version_
            }
        )
        decoder_


{-  Return data  -}


type alias Response =
    { repository : Maybe Repository }


type alias Repository =
    { issues : Issues }


type alias Issues =
    { edges : Maybe (List (Maybe Edges)) }


type alias Edges =
    { node : Maybe Repo.Fragments.Issue.Issue }


decoder_ : Int -> Json.Decode.Decoder Response
decoder_ version_ =
    Json.Decode.succeed Response
        |> GraphQL.Engine.versionedJsonField
            version_
            "repository"
            (GraphQL.Engine.decodeNullable
                (Json.Decode.succeed Repository
                    |> GraphQL.Engine.versionedJsonField
                        0
                        "issues"
                        (Json.Decode.succeed Issues
                            |> GraphQL.Engine.versionedJsonField
                                0
                                "edges"
                                (GraphQL.Engine.decodeNullable
                                    (Json.Decode.list
                                        (GraphQL.Engine.decodeNullable
                                            (Json.Decode.succeed Edges
                                                |> GraphQL.Engine.versionedJsonField
                                                    0
                                                    "node"
                                                    (GraphQL.Engine.decodeNullable
                                                        (Json.Decode.succeed
                                                            Repo.Fragments.Issue.Issue
                                                            |> Repo.Fragments.Issue.decoder
                                                        )
                                                    )
                                            )
                                        )
                                    )
                                )
                        )
                )
            )


toPayload_ : Int -> String
toPayload_ version_ =
    ((((((((((GraphQL.Engine.versionedAlias version_ "repository" ++ " (name: ")
                ++ GraphQL.Engine.versionedName version_ "$repoName"
            )
                ++ ", owner: "
           )
            ++ GraphQL.Engine.versionedName version_ "$repoOwner"
          )
            ++ ") {issues (states: "
         )
            ++ GraphQL.Engine.versionedName version_ "$states"
        )
            ++ ", last: "
       )
        ++ GraphQL.Engine.versionedName version_ "$issueCount"
      )
        ++ """) {edges {node {
..."""
     )
        ++ GraphQL.Engine.versionedName version_ "Issue"
    )
        ++ " } } } }"


toFragments_ : Int -> String
toFragments_ version_ =
    String.join
        """
"""
        [ ("fragment " ++ GraphQL.Engine.versionedName version_ "Issue")
            ++ """ on Issue {title
url
activeLockReason
labels(first: 5) {edges {label: node {name}}} }"""
        ]


