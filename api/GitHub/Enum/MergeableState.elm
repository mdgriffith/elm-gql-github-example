module GitHub.Enum.MergeableState exposing (MergeableState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, MergeableState
-}


import Json.Decode
import Json.Encode


type MergeableState
    = MERGEABLE
    | CONFLICTING
    | UNKNOWN


all : List MergeableState
all =
    [ MERGEABLE, CONFLICTING, UNKNOWN ]


decoder : Json.Decode.Decoder MergeableState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "MERGEABLE" ->
                        Json.Decode.succeed MERGEABLE

                    "CONFLICTING" ->
                        Json.Decode.succeed CONFLICTING

                    "UNKNOWN" ->
                        Json.Decode.succeed UNKNOWN

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : MergeableState -> Json.Encode.Value
encode val =
    case val of
        MERGEABLE ->
            Json.Encode.string "MERGEABLE"

        CONFLICTING ->
            Json.Encode.string "CONFLICTING"

        UNKNOWN ->
            Json.Encode.string "UNKNOWN"


