module GitHub.Enum.SecurityAdvisorySeverity exposing (SecurityAdvisorySeverity(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SecurityAdvisorySeverity
-}


import Json.Decode
import Json.Encode


type SecurityAdvisorySeverity
    = LOW
    | MODERATE
    | HIGH
    | CRITICAL


all : List SecurityAdvisorySeverity
all =
    [ LOW, MODERATE, HIGH, CRITICAL ]


decoder : Json.Decode.Decoder SecurityAdvisorySeverity
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "LOW" ->
                        Json.Decode.succeed LOW

                    "MODERATE" ->
                        Json.Decode.succeed MODERATE

                    "HIGH" ->
                        Json.Decode.succeed HIGH

                    "CRITICAL" ->
                        Json.Decode.succeed CRITICAL

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SecurityAdvisorySeverity -> Json.Encode.Value
encode val =
    case val of
        LOW ->
            Json.Encode.string "LOW"

        MODERATE ->
            Json.Encode.string "MODERATE"

        HIGH ->
            Json.Encode.string "HIGH"

        CRITICAL ->
            Json.Encode.string "CRITICAL"


