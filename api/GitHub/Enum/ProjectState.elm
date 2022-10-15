module GitHub.Enum.ProjectState exposing (ProjectState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ProjectState
-}


import Json.Decode
import Json.Encode


type ProjectState
    = OPEN
    | CLOSED


list : List ProjectState
list =
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


