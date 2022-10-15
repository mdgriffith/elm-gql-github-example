module GitHub.Enum.LockReason exposing (LockReason(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, LockReason
-}


import Json.Decode
import Json.Encode


type LockReason
    = OFF_TOPIC
    | TOO_HEATED
    | RESOLVED
    | SPAM


list : List LockReason
list =
    [ OFF_TOPIC, TOO_HEATED, RESOLVED, SPAM ]


decoder : Json.Decode.Decoder LockReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "OFF_TOPIC" ->
                        Json.Decode.succeed OFF_TOPIC

                    "TOO_HEATED" ->
                        Json.Decode.succeed TOO_HEATED

                    "RESOLVED" ->
                        Json.Decode.succeed RESOLVED

                    "SPAM" ->
                        Json.Decode.succeed SPAM

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : LockReason -> Json.Encode.Value
encode val =
    case val of
        OFF_TOPIC ->
            Json.Encode.string "OFF_TOPIC"

        TOO_HEATED ->
            Json.Encode.string "TOO_HEATED"

        RESOLVED ->
            Json.Encode.string "RESOLVED"

        SPAM ->
            Json.Encode.string "SPAM"


