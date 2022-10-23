module GitHub.Enum.RequestableCheckStatusState exposing (RequestableCheckStatusState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RequestableCheckStatusState
-}


import Json.Decode
import Json.Encode


type RequestableCheckStatusState
    = QUEUED
    | IN_PROGRESS
    | COMPLETED
    | WAITING
    | PENDING


all : List RequestableCheckStatusState
all =
    [ QUEUED, IN_PROGRESS, COMPLETED, WAITING, PENDING ]


decoder : Json.Decode.Decoder RequestableCheckStatusState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RequestableCheckStatusState -> Json.Encode.Value
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


