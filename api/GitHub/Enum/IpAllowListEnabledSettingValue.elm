module GitHub.Enum.IpAllowListEnabledSettingValue exposing (IpAllowListEnabledSettingValue(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, IpAllowListEnabledSettingValue
-}


import Json.Decode
import Json.Encode


type IpAllowListEnabledSettingValue
    = ENABLED
    | DISABLED


list : List IpAllowListEnabledSettingValue
list =
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


