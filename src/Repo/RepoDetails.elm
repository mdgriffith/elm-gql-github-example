module Repo.RepoDetails exposing (Input, Repository, Response, query)

{-| 
This file is generated from src/Repo.graphql using `elm-gql`

Please avoid modifying directly.


@docs Input

@docs Response

@docs query

@docs Repository


-}


import GitHub
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias Input =
    { owner : String, name : String }


query : Input -> GitHub.Query Response
query args =
    GraphQL.Engine.bakeToSelection
        (Just "RepoDetails")
        (\version_ ->
            { args =
                GraphQL.Engine.inputObjectToFieldList
                    (GraphQL.Engine.inputObject "Input"
                        |> GraphQL.Engine.addField
                            "name"
                            "String!"
                            (Json.Encode.string args.name)
                        |> GraphQL.Engine.addField
                            "owner"
                            "String!"
                            (Json.Encode.string args.owner)
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
    { name : String
    , description : Maybe String
    , homepageUrl : Maybe GitHub.Uri
    , diskUsageKB : Maybe Int
    }


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
                        "name"
                        Json.Decode.string
                    |> GraphQL.Engine.versionedJsonField
                        0
                        "description"
                        (GraphQL.Engine.decodeNullable Json.Decode.string)
                    |> GraphQL.Engine.versionedJsonField
                        0
                        "homepageUrl"
                        (GraphQL.Engine.decodeNullable GitHub.uri.decoder)
                    |> GraphQL.Engine.versionedJsonField
                        0
                        "diskUsageKB"
                        (GraphQL.Engine.decodeNullable Json.Decode.int)
                )
            )


toPayload_ : Int -> String
toPayload_ version_ =
    ((((GraphQL.Engine.versionedAlias version_ "repository" ++ " (name: ")
        ++ GraphQL.Engine.versionedName version_ "$name"
      )
        ++ ", owner: "
     )
        ++ GraphQL.Engine.versionedName version_ "$owner"
    )
        ++ """) {name
description
homepageUrl
diskUsageKB: diskUsage }"""


toFragments_ : Int -> String
toFragments_ version_ =
    String.join """
""" []


