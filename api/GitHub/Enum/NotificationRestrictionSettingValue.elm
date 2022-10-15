module GitHub.Enum.NotificationRestrictionSettingValue exposing (NotificationRestrictionSettingValue(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, NotificationRestrictionSettingValue
-}


import Json.Decode
import Json.Encode


type NotificationRestrictionSettingValue
    = ENABLED
    | DISABLED


list : List NotificationRestrictionSettingValue
list =
    [ ENABLED, DISABLED ]


decoder : Json.Decode.Decoder NotificationRestrictionSettingValue
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


encode : NotificationRestrictionSettingValue -> Json.Encode.Value
encode val =
    case val of
        ENABLED ->
            Json.Encode.string "ENABLED"

        DISABLED ->
            Json.Encode.string "DISABLED"


