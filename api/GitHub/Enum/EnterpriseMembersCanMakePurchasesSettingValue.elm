module GitHub.Enum.EnterpriseMembersCanMakePurchasesSettingValue exposing (EnterpriseMembersCanMakePurchasesSettingValue(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseMembersCanMakePurchasesSettingValue
-}


import Json.Decode
import Json.Encode


type EnterpriseMembersCanMakePurchasesSettingValue
    = ENABLED
    | DISABLED


list : List EnterpriseMembersCanMakePurchasesSettingValue
list =
    [ ENABLED, DISABLED ]


decoder : Json.Decode.Decoder EnterpriseMembersCanMakePurchasesSettingValue
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


encode : EnterpriseMembersCanMakePurchasesSettingValue -> Json.Encode.Value
encode val =
    case val of
        ENABLED ->
            Json.Encode.string "ENABLED"

        DISABLED ->
            Json.Encode.string "DISABLED"


