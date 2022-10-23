module GitHub.Enum.EnterpriseMembersCanCreateRepositoriesSettingValue exposing (EnterpriseMembersCanCreateRepositoriesSettingValue(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseMembersCanCreateRepositoriesSettingValue
-}


import Json.Decode
import Json.Encode


type EnterpriseMembersCanCreateRepositoriesSettingValue
    = NO_POLICY
    | ALL
    | PUBLIC
    | PRIVATE
    | DISABLED


all : List EnterpriseMembersCanCreateRepositoriesSettingValue
all =
    [ NO_POLICY, ALL, PUBLIC, PRIVATE, DISABLED ]


decoder : Json.Decode.Decoder EnterpriseMembersCanCreateRepositoriesSettingValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "NO_POLICY" ->
                    Json.Decode.succeed NO_POLICY

                "ALL" ->
                    Json.Decode.succeed ALL

                "PUBLIC" ->
                    Json.Decode.succeed PUBLIC

                "PRIVATE" ->
                    Json.Decode.succeed PRIVATE

                "DISABLED" ->
                    Json.Decode.succeed DISABLED

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseMembersCanCreateRepositoriesSettingValue -> Json.Encode.Value
encode val =
    case val of
        NO_POLICY ->
            Json.Encode.string "NO_POLICY"

        ALL ->
            Json.Encode.string "ALL"

        PUBLIC ->
            Json.Encode.string "PUBLIC"

        PRIVATE ->
            Json.Encode.string "PRIVATE"

        DISABLED ->
            Json.Encode.string "DISABLED"


