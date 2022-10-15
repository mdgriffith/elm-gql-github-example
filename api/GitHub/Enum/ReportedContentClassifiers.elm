module GitHub.Enum.ReportedContentClassifiers exposing (ReportedContentClassifiers(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ReportedContentClassifiers
-}


import Json.Decode
import Json.Encode


type ReportedContentClassifiers
    = SPAM
    | ABUSE
    | OFF_TOPIC
    | OUTDATED
    | DUPLICATE
    | RESOLVED


list : List ReportedContentClassifiers
list =
    [ SPAM, ABUSE, OFF_TOPIC, OUTDATED, DUPLICATE, RESOLVED ]


decoder : Json.Decode.Decoder ReportedContentClassifiers
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "SPAM" ->
                        Json.Decode.succeed SPAM

                    "ABUSE" ->
                        Json.Decode.succeed ABUSE

                    "OFF_TOPIC" ->
                        Json.Decode.succeed OFF_TOPIC

                    "OUTDATED" ->
                        Json.Decode.succeed OUTDATED

                    "DUPLICATE" ->
                        Json.Decode.succeed DUPLICATE

                    "RESOLVED" ->
                        Json.Decode.succeed RESOLVED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ReportedContentClassifiers -> Json.Encode.Value
encode val =
    case val of
        SPAM ->
            Json.Encode.string "SPAM"

        ABUSE ->
            Json.Encode.string "ABUSE"

        OFF_TOPIC ->
            Json.Encode.string "OFF_TOPIC"

        OUTDATED ->
            Json.Encode.string "OUTDATED"

        DUPLICATE ->
            Json.Encode.string "DUPLICATE"

        RESOLVED ->
            Json.Encode.string "RESOLVED"


