module GitHub.Enum.RepositoryInteractionLimitOrigin exposing (RepositoryInteractionLimitOrigin(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryInteractionLimitOrigin
-}


import Json.Decode
import Json.Encode


type RepositoryInteractionLimitOrigin
    = REPOSITORY
    | ORGANIZATION
    | USER


all : List RepositoryInteractionLimitOrigin
all =
    [ REPOSITORY, ORGANIZATION, USER ]


decoder : Json.Decode.Decoder RepositoryInteractionLimitOrigin
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "REPOSITORY" ->
                        Json.Decode.succeed REPOSITORY

                    "ORGANIZATION" ->
                        Json.Decode.succeed ORGANIZATION

                    "USER" ->
                        Json.Decode.succeed USER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryInteractionLimitOrigin -> Json.Encode.Value
encode val =
    case val of
        REPOSITORY ->
            Json.Encode.string "REPOSITORY"

        ORGANIZATION ->
            Json.Encode.string "ORGANIZATION"

        USER ->
            Json.Encode.string "USER"


