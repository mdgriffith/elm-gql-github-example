module GitHub.Enum.ProjectState exposing (ProjectState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectState
-}


import Json.Decode
import Json.Encode


type ProjectState
    = OPEN
    | CLOSED


all : List ProjectState
all =
    [ OPEN, CLOSED ]


decoder : Json.Decode.Decoder ProjectState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "OPEN" ->
                        Json.Decode.succeed OPEN

                    "CLOSED" ->
                        Json.Decode.succeed CLOSED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectState -> Json.Encode.Value
encode val =
    case val of
        OPEN ->
            Json.Encode.string "OPEN"

        CLOSED ->
            Json.Encode.string "CLOSED"


