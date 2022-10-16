module GitHub.Enum.SecurityAdvisoryIdentifierType exposing (SecurityAdvisoryIdentifierType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SecurityAdvisoryIdentifierType
-}


import Json.Decode
import Json.Encode


type SecurityAdvisoryIdentifierType
    = CVE
    | GHSA


all : List SecurityAdvisoryIdentifierType
all =
    [ CVE, GHSA ]


decoder : Json.Decode.Decoder SecurityAdvisoryIdentifierType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CVE" ->
                        Json.Decode.succeed CVE

                    "GHSA" ->
                        Json.Decode.succeed GHSA

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SecurityAdvisoryIdentifierType -> Json.Encode.Value
encode val =
    case val of
        CVE ->
            Json.Encode.string "CVE"

        GHSA ->
            Json.Encode.string "GHSA"


