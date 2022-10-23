module GitHub.Enum.PullRequestState exposing (PullRequestState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PullRequestState
-}


import Json.Decode
import Json.Encode


type PullRequestState
    = OPEN
    | CLOSED
    | MERGED


all : List PullRequestState
all =
    [ OPEN, CLOSED, MERGED ]


decoder : Json.Decode.Decoder PullRequestState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


