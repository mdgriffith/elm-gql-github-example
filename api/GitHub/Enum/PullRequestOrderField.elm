module GitHub.Enum.PullRequestOrderField exposing (PullRequestOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, PullRequestOrderField
-}


import Json.Decode
import Json.Encode


type PullRequestOrderField
    = CREATED_AT
    | UPDATED_AT


list : List PullRequestOrderField
list =
    [ CREATED_AT, UPDATED_AT ]


decoder : Json.Decode.Decoder PullRequestOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


