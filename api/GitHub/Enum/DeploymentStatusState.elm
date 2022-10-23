module GitHub.Enum.DeploymentStatusState exposing (DeploymentStatusState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, DeploymentStatusState
-}


import Json.Decode
import Json.Encode


type DeploymentStatusState
    = PENDING
    | SUCCESS
    | FAILURE
    | INACTIVE
    | ERROR
    | QUEUED
    | IN_PROGRESS
    | WAITING


all : List DeploymentStatusState
all =
    [ PENDING, SUCCESS, FAILURE, INACTIVE, ERROR, QUEUED, IN_PROGRESS, WAITING ]


decoder : Json.Decode.Decoder DeploymentStatusState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "PENDING" ->
                    Json.Decode.succeed PENDING

                "SUCCESS" ->
                    Json.Decode.succeed SUCCESS

                "FAILURE" ->
                    Json.Decode.succeed FAILURE

                "INACTIVE" ->
                    Json.Decode.succeed INACTIVE

                "ERROR" ->
                    Json.Decode.succeed ERROR

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


encode : DeploymentStatusState -> Json.Encode.Value
encode val =
    case val of
        PENDING ->
            Json.Encode.string "PENDING"

        SUCCESS ->
            Json.Encode.string "SUCCESS"

        FAILURE ->
            Json.Encode.string "FAILURE"

        INACTIVE ->
            Json.Encode.string "INACTIVE"

        ERROR ->
            Json.Encode.string "ERROR"

        QUEUED ->
            Json.Encode.string "QUEUED"

        IN_PROGRESS ->
            Json.Encode.string "IN_PROGRESS"

        WAITING ->
            Json.Encode.string "WAITING"


