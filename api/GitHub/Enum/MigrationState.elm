module GitHub.Enum.MigrationState exposing (MigrationState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, MigrationState
-}


import Json.Decode
import Json.Encode


type MigrationState
    = NOT_STARTED
    | QUEUED
    | IN_PROGRESS
    | SUCCEEDED
    | FAILED
    | PENDING_VALIDATION
    | FAILED_VALIDATION


all : List MigrationState
all =
    [ NOT_STARTED
    , QUEUED
    , IN_PROGRESS
    , SUCCEEDED
    , FAILED
    , PENDING_VALIDATION
    , FAILED_VALIDATION
    ]


decoder : Json.Decode.Decoder MigrationState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "NOT_STARTED" ->
                        Json.Decode.succeed NOT_STARTED

                    "QUEUED" ->
                        Json.Decode.succeed QUEUED

                    "IN_PROGRESS" ->
                        Json.Decode.succeed IN_PROGRESS

                    "SUCCEEDED" ->
                        Json.Decode.succeed SUCCEEDED

                    "FAILED" ->
                        Json.Decode.succeed FAILED

                    "PENDING_VALIDATION" ->
                        Json.Decode.succeed PENDING_VALIDATION

                    "FAILED_VALIDATION" ->
                        Json.Decode.succeed FAILED_VALIDATION

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : MigrationState -> Json.Encode.Value
encode val =
    case val of
        NOT_STARTED ->
            Json.Encode.string "NOT_STARTED"

        QUEUED ->
            Json.Encode.string "QUEUED"

        IN_PROGRESS ->
            Json.Encode.string "IN_PROGRESS"

        SUCCEEDED ->
            Json.Encode.string "SUCCEEDED"

        FAILED ->
            Json.Encode.string "FAILED"

        PENDING_VALIDATION ->
            Json.Encode.string "PENDING_VALIDATION"

        FAILED_VALIDATION ->
            Json.Encode.string "FAILED_VALIDATION"


