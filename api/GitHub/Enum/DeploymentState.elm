module GitHub.Enum.DeploymentState exposing (DeploymentState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, DeploymentState
-}


import Json.Decode
import Json.Encode


type DeploymentState
    = ABANDONED
    | ACTIVE
    | DESTROYED
    | ERROR
    | FAILURE
    | INACTIVE
    | PENDING
    | QUEUED
    | IN_PROGRESS
    | WAITING


list : List DeploymentState
list =
    [ ABANDONED
    , ACTIVE
    , DESTROYED
    , ERROR
    , FAILURE
    , INACTIVE
    , PENDING
    , QUEUED
    , IN_PROGRESS
    , WAITING
    ]


decoder : Json.Decode.Decoder DeploymentState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ABANDONED" ->
                        Json.Decode.succeed ABANDONED

                    "ACTIVE" ->
                        Json.Decode.succeed ACTIVE

                    "DESTROYED" ->
                        Json.Decode.succeed DESTROYED

                    "ERROR" ->
                        Json.Decode.succeed ERROR

                    "FAILURE" ->
                        Json.Decode.succeed FAILURE

                    "INACTIVE" ->
                        Json.Decode.succeed INACTIVE

                    "PENDING" ->
                        Json.Decode.succeed PENDING

                    "QUEUED" ->
                        Json.Decode.succeed QUEUED

                    "IN_PROGRESS" ->
                        Json.Decode.succeed IN_PROGRESS

                    "WAITING" ->
                        Json.Decode.succeed WAITING

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DeploymentState -> Json.Encode.Value
encode val =
    case val of
        ABANDONED ->
            Json.Encode.string "ABANDONED"

        ACTIVE ->
            Json.Encode.string "ACTIVE"

        DESTROYED ->
            Json.Encode.string "DESTROYED"

        ERROR ->
            Json.Encode.string "ERROR"

        FAILURE ->
            Json.Encode.string "FAILURE"

        INACTIVE ->
            Json.Encode.string "INACTIVE"

        PENDING ->
            Json.Encode.string "PENDING"

        QUEUED ->
            Json.Encode.string "QUEUED"

        IN_PROGRESS ->
            Json.Encode.string "IN_PROGRESS"

        WAITING ->
            Json.Encode.string "WAITING"


