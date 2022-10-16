module GitHub.Enum.EnterpriseEnabledSettingValue exposing (EnterpriseEnabledSettingValue(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseEnabledSettingValue
-}


import Json.Decode
import Json.Encode


type EnterpriseEnabledSettingValue
    = ENABLED
    | NO_POLICY


all : List EnterpriseEnabledSettingValue
all =
    [ ENABLED, NO_POLICY ]


decoder : Json.Decode.Decoder EnterpriseEnabledSettingValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ENABLED" ->
                        Json.Decode.succeed ENABLED

                    "NO_POLICY" ->
                        Json.Decode.succeed NO_POLICY

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseEnabledSettingValue -> Json.Encode.Value
encode val =
    case val of
        ENABLED ->
            Json.Encode.string "ENABLED"

        NO_POLICY ->
            Json.Encode.string "NO_POLICY"


