module GitHub.Enum.DiffSide exposing (DiffSide(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, DiffSide
-}


import Json.Decode
import Json.Encode


type DiffSide
    = LEFT
    | RIGHT


all : List DiffSide
all =
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


