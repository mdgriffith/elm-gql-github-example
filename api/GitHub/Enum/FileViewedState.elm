module GitHub.Enum.FileViewedState exposing (FileViewedState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, FileViewedState
-}


import Json.Decode
import Json.Encode


type FileViewedState
    = DISMISSED
    | VIEWED
    | UNVIEWED


list : List FileViewedState
list =
    [ DISMISSED, VIEWED, UNVIEWED ]


decoder : Json.Decode.Decoder FileViewedState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "DISMISSED" ->
                        Json.Decode.succeed DISMISSED

                    "VIEWED" ->
                        Json.Decode.succeed VIEWED

                    "UNVIEWED" ->
                        Json.Decode.succeed UNVIEWED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : FileViewedState -> Json.Encode.Value
encode val =
    case val of
        DISMISSED ->
            Json.Encode.string "DISMISSED"

        VIEWED ->
            Json.Encode.string "VIEWED"

        UNVIEWED ->
            Json.Encode.string "UNVIEWED"


