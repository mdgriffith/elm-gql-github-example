module GitHub.Enum.SecurityAdvisoryClassification exposing (SecurityAdvisoryClassification(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SecurityAdvisoryClassification
-}


import Json.Decode
import Json.Encode


type SecurityAdvisoryClassification
    = GENERAL
    | MALWARE


list : List SecurityAdvisoryClassification
list =
    [ GENERAL, MALWARE ]


decoder : Json.Decode.Decoder SecurityAdvisoryClassification
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "GENERAL" ->
                        Json.Decode.succeed GENERAL

                    "MALWARE" ->
                        Json.Decode.succeed MALWARE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SecurityAdvisoryClassification -> Json.Encode.Value
encode val =
    case val of
        GENERAL ->
            Json.Encode.string "GENERAL"

        MALWARE ->
            Json.Encode.string "MALWARE"


