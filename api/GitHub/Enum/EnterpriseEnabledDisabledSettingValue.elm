module GitHub.Enum.EnterpriseEnabledDisabledSettingValue exposing (EnterpriseEnabledDisabledSettingValue(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseEnabledDisabledSettingValue
-}


import Json.Decode
import Json.Encode


type EnterpriseEnabledDisabledSettingValue
    = ENABLED
    | DISABLED
    | NO_POLICY


list : List EnterpriseEnabledDisabledSettingValue
list =
    [ ENABLED, DISABLED, NO_POLICY ]


decoder : Json.Decode.Decoder EnterpriseEnabledDisabledSettingValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ENABLED" ->
                        Json.Decode.succeed ENABLED

                    "DISABLED" ->
                        Json.Decode.succeed DISABLED

                    "NO_POLICY" ->
                        Json.Decode.succeed NO_POLICY

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseEnabledDisabledSettingValue -> Json.Encode.Value
encode val =
    case val of
        ENABLED ->
            Json.Encode.string "ENABLED"

        DISABLED ->
            Json.Encode.string "DISABLED"

        NO_POLICY ->
            Json.Encode.string "NO_POLICY"


