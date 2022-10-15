module GitHub.Enum.DiffSide exposing (DiffSide(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, DiffSide
-}


import Json.Decode
import Json.Encode


type DiffSide
    = LEFT
    | RIGHT


list : List DiffSide
list =
    [ LEFT, RIGHT ]


decoder : Json.Decode.Decoder DiffSide
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "LEFT" ->
                        Json.Decode.succeed LEFT

                    "RIGHT" ->
                        Json.Decode.succeed RIGHT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DiffSide -> Json.Encode.Value
encode val =
    case val of
        LEFT ->
            Json.Encode.string "LEFT"

        RIGHT ->
            Json.Encode.string "RIGHT"


