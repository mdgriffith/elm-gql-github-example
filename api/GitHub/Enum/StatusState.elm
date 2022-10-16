module GitHub.Enum.StatusState exposing (StatusState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, StatusState
-}


import Json.Decode
import Json.Encode


type StatusState
    = EXPECTED
    | ERROR
    | FAILURE
    | PENDING
    | SUCCESS


all : List StatusState
all =
    [ EXPECTED, ERROR, FAILURE, PENDING, SUCCESS ]


decoder : Json.Decode.Decoder StatusState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "EXPECTED" ->
                        Json.Decode.succeed EXPECTED

                    "ERROR" ->
                        Json.Decode.succeed ERROR

                    "FAILURE" ->
                        Json.Decode.succeed FAILURE

                    "PENDING" ->
                        Json.Decode.succeed PENDING

                    "SUCCESS" ->
                        Json.Decode.succeed SUCCESS

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : StatusState -> Json.Encode.Value
encode val =
    case val of
        EXPECTED ->
            Json.Encode.string "EXPECTED"

        ERROR ->
            Json.Encode.string "ERROR"

        FAILURE ->
            Json.Encode.string "FAILURE"

        PENDING ->
            Json.Encode.string "PENDING"

        SUCCESS ->
            Json.Encode.string "SUCCESS"


