module GitHub.Enum.CheckStatusState exposing (CheckStatusState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, CheckStatusState
-}


import Json.Decode
import Json.Encode


type CheckStatusState
    = QUEUED
    | IN_PROGRESS
    | COMPLETED
    | WAITING
    | PENDING
    | REQUESTED


all : List CheckStatusState
all =
    [ QUEUED, IN_PROGRESS, COMPLETED, WAITING, PENDING, REQUESTED ]


decoder : Json.Decode.Decoder CheckStatusState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "QUEUED" ->
                        Json.Decode.succeed QUEUED

                    "IN_PROGRESS" ->
                        Json.Decode.succeed IN_PROGRESS

                    "COMPLETED" ->
                        Json.Decode.succeed COMPLETED

                    "WAITING" ->
                        Json.Decode.succeed WAITING

                    "PENDING" ->
                        Json.Decode.succeed PENDING

                    "REQUESTED" ->
                        Json.Decode.succeed REQUESTED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CheckStatusState -> Json.Encode.Value
encode val =
    case val of
        QUEUED ->
            Json.Encode.string "QUEUED"

        IN_PROGRESS ->
            Json.Encode.string "IN_PROGRESS"

        COMPLETED ->
            Json.Encode.string "COMPLETED"

        WAITING ->
            Json.Encode.string "WAITING"

        PENDING ->
            Json.Encode.string "PENDING"

        REQUESTED ->
            Json.Encode.string "REQUESTED"


