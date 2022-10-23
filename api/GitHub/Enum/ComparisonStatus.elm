module GitHub.Enum.ComparisonStatus exposing (ComparisonStatus(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ComparisonStatus
-}


import Json.Decode
import Json.Encode


type ComparisonStatus
    = DIVERGED
    | AHEAD
    | BEHIND
    | IDENTICAL


all : List ComparisonStatus
all =
    [ DIVERGED, AHEAD, BEHIND, IDENTICAL ]


decoder : Json.Decode.Decoder ComparisonStatus
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "DIVERGED" ->
                    Json.Decode.succeed DIVERGED

                "AHEAD" ->
                    Json.Decode.succeed AHEAD

                "BEHIND" ->
                    Json.Decode.succeed BEHIND

                "IDENTICAL" ->
                    Json.Decode.succeed IDENTICAL

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ComparisonStatus -> Json.Encode.Value
encode val =
    case val of
        DIVERGED ->
            Json.Encode.string "DIVERGED"

        AHEAD ->
            Json.Encode.string "AHEAD"

        BEHIND ->
            Json.Encode.string "BEHIND"

        IDENTICAL ->
            Json.Encode.string "IDENTICAL"


