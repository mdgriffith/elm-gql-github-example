module GitHub.Enum.IpAllowListEnabledSettingValue exposing (IpAllowListEnabledSettingValue(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IpAllowListEnabledSettingValue
-}


import Json.Decode
import Json.Encode


type IpAllowListEnabledSettingValue
    = ENABLED
    | DISABLED


all : List IpAllowListEnabledSettingValue
all =
    [ ENABLED, DISABLED ]


decoder : Json.Decode.Decoder IpAllowListEnabledSettingValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ENABLED" ->
                        Json.Decode.succeed ENABLED

                    "DISABLED" ->
                        Json.Decode.succeed DISABLED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : IpAllowListEnabledSettingValue -> Json.Encode.Value
encode val =
    case val of
        ENABLED ->
            Json.Encode.string "ENABLED"

        DISABLED ->
            Json.Encode.string "DISABLED"


