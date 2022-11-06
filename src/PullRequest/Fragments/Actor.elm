module PullRequest.Fragments.Actor exposing (decoder)

{-| 
This file is generated from src/PullRequest.graphql using `elm-gql`

Please avoid modifying directly.



@docs decoder


-}


import GitHub
import GraphQL.Engine
import Json.Decode


type alias Actor =
    { login : String, avatarUrl : GitHub.Uri, resourcePath : GitHub.Uri }


decoder start_ =
    start_
        |> GraphQL.Engine.versionedJsonField 0 "login" Json.Decode.string
        |> GraphQL.Engine.versionedJsonField 0 "avatarUrl" GitHub.uri.decoder
        |> GraphQL.Engine.versionedJsonField 0 "resourcePath" GitHub.uri.decoder


