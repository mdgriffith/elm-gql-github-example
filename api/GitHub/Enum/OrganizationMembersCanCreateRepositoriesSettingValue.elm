module GitHub.Enum.OrganizationMembersCanCreateRepositoriesSettingValue exposing (OrganizationMembersCanCreateRepositoriesSettingValue(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrganizationMembersCanCreateRepositoriesSettingValue
-}


import Json.Decode
import Json.Encode


type OrganizationMembersCanCreateRepositoriesSettingValue
    = ALL
    | PRIVATE
    | INTERNAL
    | DISABLED


all : List OrganizationMembersCanCreateRepositoriesSettingValue
all =
    [ ALL, PRIVATE, INTERNAL, DISABLED ]


decoder :
    Json.Decode.Decoder OrganizationMembersCanCreateRepositoriesSettingValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


