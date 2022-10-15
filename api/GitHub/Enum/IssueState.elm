module GitHub.Enum.IssueState exposing (IssueState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, IssueState
-}


import Json.Decode
import Json.Encode


type IssueState
    = OPEN
    | CLOSED


list : List IssueState
list =
    [ OPEN, CLOSED ]


decoder : Json.Decode.Decoder IssueState
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


encode : IssueState -> Json.Encode.Value
encode val =
    case val of
        OPEN ->
            Json.Encode.string "OPEN"

        CLOSED ->
            Json.Encode.string "CLOSED"


