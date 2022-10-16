module GitHub.Enum.IpAllowListForInstalledAppsEnabledSettingValue exposing (IpAllowListForInstalledAppsEnabledSettingValue(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IpAllowListForInstalledAppsEnabledSettingValue
-}


import Json.Decode
import Json.Encode


type IpAllowListForInstalledAppsEnabledSettingValue
    = ENABLED
    | DISABLED


all : List IpAllowListForInstalledAppsEnabledSettingValue
all =
    [ ENABLED, DISABLED ]


decoder : Json.Decode.Decoder IpAllowListForInstalledAppsEnabledSettingValue
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


encode : IpAllowListForInstalledAppsEnabledSettingValue -> Json.Encode.Value
encode val =
    case val of
        ENABLED ->
            Json.Encode.string "ENABLED"

        DISABLED ->
            Json.Encode.string "DISABLED"


