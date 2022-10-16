module GitHub.Enum.IdentityProviderConfigurationState exposing (IdentityProviderConfigurationState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IdentityProviderConfigurationState
-}


import Json.Decode
import Json.Encode


type IdentityProviderConfigurationState
    = ENFORCED
    | CONFIGURED
    | UNCONFIGURED


all : List IdentityProviderConfigurationState
all =
    [ ENFORCED, CONFIGURED, UNCONFIGURED ]


decoder : Json.Decode.Decoder IdentityProviderConfigurationState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ENFORCED" ->
                        Json.Decode.succeed ENFORCED

                    "CONFIGURED" ->
                        Json.Decode.succeed CONFIGURED

                    "UNCONFIGURED" ->
                        Json.Decode.succeed UNCONFIGURED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : IdentityProviderConfigurationState -> Json.Encode.Value
encode val =
    case val of
        ENFORCED ->
            Json.Encode.string "ENFORCED"

        CONFIGURED ->
            Json.Encode.string "CONFIGURED"

        UNCONFIGURED ->
            Json.Encode.string "UNCONFIGURED"


