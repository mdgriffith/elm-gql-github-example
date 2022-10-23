module GitHub.Enum.SamlDigestAlgorithm exposing (SamlDigestAlgorithm(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SamlDigestAlgorithm
-}


import Json.Decode
import Json.Encode


type SamlDigestAlgorithm
    = SHA1
    | SHA256
    | SHA384
    | SHA512


all : List SamlDigestAlgorithm
all =
    [ SHA1, SHA256, SHA384, SHA512 ]


decoder : Json.Decode.Decoder SamlDigestAlgorithm
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "SHA1" ->
                    Json.Decode.succeed SHA1

                "SHA256" ->
                    Json.Decode.succeed SHA256

                "SHA384" ->
                    Json.Decode.succeed SHA384

                "SHA512" ->
                    Json.Decode.succeed SHA512

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SamlDigestAlgorithm -> Json.Encode.Value
encode val =
    case val of
        SHA1 ->
            Json.Encode.string "SHA1"

        SHA256 ->
            Json.Encode.string "SHA256"

        SHA384 ->
            Json.Encode.string "SHA384"

        SHA512 ->
            Json.Encode.string "SHA512"


