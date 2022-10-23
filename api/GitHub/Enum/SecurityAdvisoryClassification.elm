module GitHub.Enum.SecurityAdvisoryClassification exposing (SecurityAdvisoryClassification(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SecurityAdvisoryClassification
-}


import Json.Decode
import Json.Encode


type SecurityAdvisoryClassification
    = GENERAL
    | MALWARE


all : List SecurityAdvisoryClassification
all =
    [ GENERAL, MALWARE ]


decoder : Json.Decode.Decoder SecurityAdvisoryClassification
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


