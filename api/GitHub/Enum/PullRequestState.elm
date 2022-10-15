module GitHub.Enum.PullRequestState exposing (PullRequestState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, PullRequestState
-}


import Json.Decode
import Json.Encode


type PullRequestState
    = OPEN
    | CLOSED
    | MERGED


list : List PullRequestState
list =
    [ OPEN, CLOSED, MERGED ]


decoder : Json.Decode.Decoder PullRequestState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "OPEN" ->
                        Json.Decode.succeed OPEN

                    "CLOSED" ->
                        Json.Decode.succeed CLOSED

                    "MERGED" ->
                        Json.Decode.succeed MERGED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PullRequestState -> Json.Encode.Value
encode val =
    case val of
        OPEN ->
            Json.Encode.string "OPEN"

        CLOSED ->
            Json.Encode.string "CLOSED"

        MERGED ->
            Json.Encode.string "MERGED"


