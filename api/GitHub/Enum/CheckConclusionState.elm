module GitHub.Enum.CheckConclusionState exposing (CheckConclusionState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, CheckConclusionState
-}


import Json.Decode
import Json.Encode


type CheckConclusionState
    = ACTION_REQUIRED
    | TIMED_OUT
    | CANCELLED
    | FAILURE
    | SUCCESS
    | NEUTRAL
    | SKIPPED
    | STARTUP_FAILURE
    | STALE


all : List CheckConclusionState
all =
    [ ACTION_REQUIRED
    , TIMED_OUT
    , CANCELLED
    , FAILURE
    , SUCCESS
    , NEUTRAL
    , SKIPPED
    , STARTUP_FAILURE
    , STALE
    ]


decoder : Json.Decode.Decoder CheckConclusionState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "ACTION_REQUIRED" ->
                    Json.Decode.succeed ACTION_REQUIRED

                "TIMED_OUT" ->
                    Json.Decode.succeed TIMED_OUT

                "CANCELLED" ->
                    Json.Decode.succeed CANCELLED

                "FAILURE" ->
                    Json.Decode.succeed FAILURE

                "SUCCESS" ->
                    Json.Decode.succeed SUCCESS

                "NEUTRAL" ->
                    Json.Decode.succeed NEUTRAL

                "SKIPPED" ->
                    Json.Decode.succeed SKIPPED

                "STARTUP_FAILURE" ->
                    Json.Decode.succeed STARTUP_FAILURE

                "STALE" ->
                    Json.Decode.succeed STALE

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CheckConclusionState -> Json.Encode.Value
encode val =
    case val of
        ACTION_REQUIRED ->
            Json.Encode.string "ACTION_REQUIRED"

        TIMED_OUT ->
            Json.Encode.string "TIMED_OUT"

        CANCELLED ->
            Json.Encode.string "CANCELLED"

        FAILURE ->
            Json.Encode.string "FAILURE"

        SUCCESS ->
            Json.Encode.string "SUCCESS"

        NEUTRAL ->
            Json.Encode.string "NEUTRAL"

        SKIPPED ->
            Json.Encode.string "SKIPPED"

        STARTUP_FAILURE ->
            Json.Encode.string "STARTUP_FAILURE"

        STALE ->
            Json.Encode.string "STALE"


