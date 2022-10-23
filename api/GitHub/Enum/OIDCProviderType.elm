module GitHub.Enum.OIDCProviderType exposing (OIDCProviderType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OIDCProviderType
-}


import Json.Decode
import Json.Encode


type OIDCProviderType
    = AAD


all : List OIDCProviderType
all =
    [ AAD ]


decoder : Json.Decode.Decoder OIDCProviderType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "AAD" ->
                    Json.Decode.succeed AAD

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OIDCProviderType -> Json.Encode.Value
encode val =
    case val of
        AAD ->
            Json.Encode.string "AAD"


