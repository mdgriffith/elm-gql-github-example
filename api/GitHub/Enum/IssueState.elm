module GitHub.Enum.IssueState exposing (IssueState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IssueState
-}


import Json.Decode
import Json.Encode


type IssueState
    = OPEN
    | CLOSED


all : List IssueState
all =
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


