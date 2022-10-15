module GitHub.Enum.IpAllowListForInstalledAppsEnabledSettingValue exposing (IpAllowListForInstalledAppsEnabledSettingValue(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, IpAllowListForInstalledAppsEnabledSettingValue
-}


import Json.Decode
import Json.Encode


type IpAllowListForInstalledAppsEnabledSettingValue
    = ENABLED
    | DISABLED


list : List IpAllowListForInstalledAppsEnabledSettingValue
list =
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


