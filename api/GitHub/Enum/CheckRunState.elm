module GitHub.Enum.CheckRunState exposing (CheckRunState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, CheckRunState
-}


import Json.Decode
import Json.Encode


type CheckRunState
    = ACTION_REQUIRED
    | CANCELLED
    | COMPLETED
    | FAILURE
    | IN_PROGRESS
    | NEUTRAL
    | PENDING
    | QUEUED
    | SKIPPED
    | STALE
    | STARTUP_FAILURE
    | SUCCESS
    | TIMED_OUT
    | WAITING


all : List CheckRunState
all =
    [ ACTION_REQUIRED
    , CANCELLED
    , COMPLETED
    , FAILURE
    , IN_PROGRESS
    , NEUTRAL
    , PENDING
    , QUEUED
    , SKIPPED
    , STALE
    , STARTUP_FAILURE
    , SUCCESS
    , TIMED_OUT
    , WAITING
    ]


decoder : Json.Decode.Decoder CheckRunState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "ACTION_REQUIRED" ->
                    Json.Decode.succeed ACTION_REQUIRED

                "CANCELLED" ->
                    Json.Decode.succeed CANCELLED

                "COMPLETED" ->
                    Json.Decode.succeed COMPLETED

                "FAILURE" ->
                    Json.Decode.succeed FAILURE

                "IN_PROGRESS" ->
                    Json.Decode.succeed IN_PROGRESS

                "NEUTRAL" ->
                    Json.Decode.succeed NEUTRAL

                "PENDING" ->
                    Json.Decode.succeed PENDING

                "QUEUED" ->
                    Json.Decode.succeed QUEUED

                "SKIPPED" ->
                    Json.Decode.succeed SKIPPED

                "STALE" ->
                    Json.Decode.succeed STALE

                "STARTUP_FAILURE" ->
                    Json.Decode.succeed STARTUP_FAILURE

                "SUCCESS" ->
                    Json.Decode.succeed SUCCESS

                "TIMED_OUT" ->
                    Json.Decode.succeed TIMED_OUT

                "WAITING" ->
                    Json.Decode.succeed WAITING

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CheckRunState -> Json.Encode.Value
encode val =
    case val of
        ACTION_REQUIRED ->
            Json.Encode.string "ACTION_REQUIRED"

        CANCELLED ->
            Json.Encode.string "CANCELLED"

        COMPLETED ->
            Json.Encode.string "COMPLETED"

        FAILURE ->
            Json.Encode.string "FAILURE"

        IN_PROGRESS ->
            Json.Encode.string "IN_PROGRESS"

        NEUTRAL ->
            Json.Encode.string "NEUTRAL"

        PENDING ->
            Json.Encode.string "PENDING"

        QUEUED ->
            Json.Encode.string "QUEUED"

        SKIPPED ->
            Json.Encode.string "SKIPPED"

        STALE ->
            Json.Encode.string "STALE"

        STARTUP_FAILURE ->
            Json.Encode.string "STARTUP_FAILURE"

        SUCCESS ->
            Json.Encode.string "SUCCESS"

        TIMED_OUT ->
            Json.Encode.string "TIMED_OUT"

        WAITING ->
            Json.Encode.string "WAITING"


