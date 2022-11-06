module Repo.Fragments.Issue exposing (Edges, Issue, Label, Labels, decoder)

{-| 
This file is generated from src/Repo.graphql using `elm-gql`

Please avoid modifying directly.



@docs decoder, Label, Edges, Labels, Issue


-}


import GitHub
import GitHub.Enum.LockReason
import GraphQL.Engine
import Json.Decode


type alias Issue =
    { title : String
    , url : GitHub.Uri
    , activeLockReason : Maybe GitHub.Enum.LockReason.LockReason
    , labels : Maybe Labels
    }


type alias Labels =
    { edges : Maybe (List (Maybe Edges)) }


type alias Edges =
    { label : Maybe Label }


type alias Label =
    { name : String }


decoder start_ =
    start_
        |> GraphQL.Engine.versionedJsonField 0 "title" Json.Decode.string
        |> GraphQL.Engine.versionedJsonField 0 "url" GitHub.uri.decoder
        |> GraphQL.Engine.versionedJsonField
            0
            "activeLockReason"
            (GraphQL.Engine.decodeNullable GitHub.Enum.LockReason.decoder)
        |> GraphQL.Engine.versionedJsonField
            0
            "labels"
            (GraphQL.Engine.decodeNullable
                (Json.Decode.succeed Labels
                    |> GraphQL.Engine.versionedJsonField
                        0
                        "edges"
                        (GraphQL.Engine.decodeNullable
                            (Json.Decode.list
                                (GraphQL.Engine.decodeNullable
                                    (Json.Decode.succeed Edges
                                        |> GraphQL.Engine.versionedJsonField
                                            0
                                            "label"
                                            (GraphQL.Engine.decodeNullable
                                                (Json.Decode.succeed Label
                                                    |> GraphQL.Engine.versionedJsonField
                                                        0
                                                        "name"
                                                        Json.Decode.string
                                                )
                                            )
                                    )
                                )
                            )
                        )
                )
            )


