module GitHub.Enum.SamlSignatureAlgorithm exposing (SamlSignatureAlgorithm(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SamlSignatureAlgorithm
-}


import Json.Decode
import Json.Encode


type SamlSignatureAlgorithm
    = RSA_SHA1
    | RSA_SHA256
    | RSA_SHA384
    | RSA_SHA512


list : List SamlSignatureAlgorithm
list =
    [ RSA_SHA1, RSA_SHA256, RSA_SHA384, RSA_SHA512 ]


decoder : Json.Decode.Decoder SamlSignatureAlgorithm
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "RSA_SHA1" ->
                        Json.Decode.succeed RSA_SHA1

                    "RSA_SHA256" ->
                        Json.Decode.succeed RSA_SHA256

                    "RSA_SHA384" ->
                        Json.Decode.succeed RSA_SHA384

                    "RSA_SHA512" ->
                        Json.Decode.succeed RSA_SHA512

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SamlSignatureAlgorithm -> Json.Encode.Value
encode val =
    case val of
        RSA_SHA1 ->
            Json.Encode.string "RSA_SHA1"

        RSA_SHA256 ->
            Json.Encode.string "RSA_SHA256"

        RSA_SHA384 ->
            Json.Encode.string "RSA_SHA384"

        RSA_SHA512 ->
            Json.Encode.string "RSA_SHA512"


