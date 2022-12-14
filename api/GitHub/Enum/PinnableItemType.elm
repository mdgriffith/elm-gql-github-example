module GitHub.Enum.PinnableItemType exposing (PinnableItemType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PinnableItemType
-}


import Json.Decode
import Json.Encode


type PinnableItemType
    = REPOSITORY
    | GIST
    | ISSUE
    | PROJECT
    | PULL_REQUEST
    | USER
    | ORGANIZATION
    | TEAM


all : List PinnableItemType
all =
    [ REPOSITORY, GIST, ISSUE, PROJECT, PULL_REQUEST, USER, ORGANIZATION, TEAM ]


decoder : Json.Decode.Decoder PinnableItemType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "REPOSITORY" ->
                    Json.Decode.succeed REPOSITORY

                "GIST" ->
                    Json.Decode.succeed GIST

                "ISSUE" ->
                    Json.Decode.succeed ISSUE

                "PROJECT" ->
                    Json.Decode.succeed PROJECT

                "PULL_REQUEST" ->
                    Json.Decode.succeed PULL_REQUEST

                "USER" ->
                    Json.Decode.succeed USER

                "ORGANIZATION" ->
                    Json.Decode.succeed ORGANIZATION

                "TEAM" ->
                    Json.Decode.succeed TEAM

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PinnableItemType -> Json.Encode.Value
encode val =
    case val of
        REPOSITORY ->
            Json.Encode.string "REPOSITORY"

        GIST ->
            Json.Encode.string "GIST"

        ISSUE ->
            Json.Encode.string "ISSUE"

        PROJECT ->
            Json.Encode.string "PROJECT"

        PULL_REQUEST ->
            Json.Encode.string "PULL_REQUEST"

        USER ->
            Json.Encode.string "USER"

        ORGANIZATION ->
            Json.Encode.string "ORGANIZATION"

        TEAM ->
            Json.Encode.string "TEAM"


