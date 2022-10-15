module GitHub.Enum.MergeableState exposing (MergeableState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, MergeableState
-}


import Json.Decode
import Json.Encode


type MergeableState
    = MERGEABLE
    | CONFLICTING
    | UNKNOWN


list : List MergeableState
list =
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


