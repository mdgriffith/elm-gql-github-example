module GitHub.Enum.OIDCProviderType exposing (OIDCProviderType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OIDCProviderType
-}


import Json.Decode
import Json.Encode


type OIDCProviderType
    = AAD


list : List OIDCProviderType
list =
    [ AAD ]


decoder : Json.Decode.Decoder OIDCProviderType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


