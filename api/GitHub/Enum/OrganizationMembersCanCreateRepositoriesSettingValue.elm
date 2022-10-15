module GitHub.Enum.OrganizationMembersCanCreateRepositoriesSettingValue exposing (OrganizationMembersCanCreateRepositoriesSettingValue(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OrganizationMembersCanCreateRepositoriesSettingValue
-}


import Json.Decode
import Json.Encode


type OrganizationMembersCanCreateRepositoriesSettingValue
    = ALL
    | PRIVATE
    | INTERNAL
    | DISABLED


list : List OrganizationMembersCanCreateRepositoriesSettingValue
list =
    [ ALL, PRIVATE, INTERNAL, DISABLED ]


decoder :
    Json.Decode.Decoder OrganizationMembersCanCreateRepositoriesSettingValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ALL" ->
                        Json.Decode.succeed ALL

                    "PRIVATE" ->
                        Json.Decode.succeed PRIVATE

                    "INTERNAL" ->
                        Json.Decode.succeed INTERNAL

                    "DISABLED" ->
                        Json.Decode.succeed DISABLED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode :
    OrganizationMembersCanCreateRepositoriesSettingValue -> Json.Encode.Value
encode val =
    case val of
        ALL ->
            Json.Encode.string "ALL"

        PRIVATE ->
            Json.Encode.string "PRIVATE"

        INTERNAL ->
            Json.Encode.string "INTERNAL"

        DISABLED ->
            Json.Encode.string "DISABLED"


