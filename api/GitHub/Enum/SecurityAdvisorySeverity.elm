module GitHub.Enum.SecurityAdvisorySeverity exposing (SecurityAdvisorySeverity(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SecurityAdvisorySeverity
-}


import Json.Decode
import Json.Encode


type SecurityAdvisorySeverity
    = LOW
    | MODERATE
    | HIGH
    | CRITICAL


list : List SecurityAdvisorySeverity
list =
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


