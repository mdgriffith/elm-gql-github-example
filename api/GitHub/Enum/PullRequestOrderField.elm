module GitHub.Enum.PullRequestOrderField exposing (PullRequestOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PullRequestOrderField
-}


import Json.Decode
import Json.Encode


type PullRequestOrderField
    = CREATED_AT
    | UPDATED_AT


all : List PullRequestOrderField
all =
    [ CREATED_AT, UPDATED_AT ]


decoder : Json.Decode.Decoder PullRequestOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                "UPDATED_AT" ->
                    Json.Decode.succeed UPDATED_AT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PullRequestOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"


