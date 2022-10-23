module Repo.RepoList exposing (Input, Nodes, Repositories, Response, Viewer, query)

{-| 
This file is generated from src/Repo.graphql using `elm-gql`

Please avoid modifying directly.


@docs Input

@docs Response

@docs query

@docs Nodes, Repositories, Viewer


-}


import GitHub
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias Input =
    { numberOfRepos : Int }


query : Input -> GitHub.Query Response
query args =
    GraphQL.Engine.bakeToSelection
        (Just "RepoList")
        (\version_ ->
            ( GraphQL.Engine.inputObjectToFieldList
                (GraphQL.Engine.inputObject "Input"
                    |> GraphQL.Engine.addField
                        "numberOfRepos"
                        "Int!"
                        (Json.Encode.int args.numberOfRepos)
                )
            , toPayload_ version_
            )
        )
        decoder_


{-  Return data  -}


type alias Response =
    { viewer : Viewer }


type alias Viewer =
    { repositories : Repositories, name : Maybe String }


type alias Repositories =
    { nodes : Maybe (List (Maybe Nodes)) }


type alias Nodes =
    { name : String }


decoder_ : Int -> Json.Decode.Decoder Response
decoder_ version_ =
    Json.Decode.succeed Response
        |> GraphQL.Engine.versionedJsonField
            version_
            "viewer"
            (Json.Decode.succeed Viewer
                |> GraphQL.Engine.versionedJsonField
                    0
                    "repositories"
                    (Json.Decode.succeed Repositories
                        |> GraphQL.Engine.versionedJsonField
                            0
                            "nodes"
                            (GraphQL.Engine.decodeNullable
                                (Json.Decode.list
                                    (GraphQL.Engine.decodeNullable
                                        (Json.Decode.succeed Nodes
                                            |> GraphQL.Engine.versionedJsonField
                                                0
                                                "name"
                                                Json.Decode.string
                                        )
                                    )
                                )
                            )
                    )
                |> GraphQL.Engine.versionedJsonField
                    0
                    "name"
                    (GraphQL.Engine.decodeNullable Json.Decode.string)
            )


toPayload_ : Int -> String
toPayload_ version_ =
    ((GraphQL.Engine.versionedAlias version_ "viewer"
        ++ """ {name
repositories (last: """
     )
        ++ GraphQL.Engine.versionedName version_ "$numberOfRepos"
    )
        ++ ") {nodes {name } } }"


