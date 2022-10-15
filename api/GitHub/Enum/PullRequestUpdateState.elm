module GitHub.Enum.PullRequestUpdateState exposing (PullRequestUpdateState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, PullRequestUpdateState
-}


import Json.Decode
import Json.Encode


type PullRequestUpdateState
    = OPEN
    | CLOSED


list : List PullRequestUpdateState
list =
    [ OPEN, CLOSED ]


decoder : Json.Decode.Decoder PullRequestUpdateState
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


encode : PullRequestUpdateState -> Json.Encode.Value
encode val =
    case val of
        OPEN ->
            Json.Encode.string "OPEN"

        CLOSED ->
            Json.Encode.string "CLOSED"


