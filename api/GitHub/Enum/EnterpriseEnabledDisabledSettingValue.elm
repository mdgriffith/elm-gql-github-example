module GitHub.Enum.EnterpriseEnabledDisabledSettingValue exposing (EnterpriseEnabledDisabledSettingValue(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseEnabledDisabledSettingValue
-}


import Json.Decode
import Json.Encode


type EnterpriseEnabledDisabledSettingValue
    = ENABLED
    | DISABLED
    | NO_POLICY


all : List EnterpriseEnabledDisabledSettingValue
all =
    [ ENABLED, DISABLED, NO_POLICY ]


decoder : Json.Decode.Decoder EnterpriseEnabledDisabledSettingValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


