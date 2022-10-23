module GitHub.Enum.OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility exposing (OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
-}


import Json.Decode
import Json.Encode


type OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
    = ALL
    | PUBLIC
    | NONE
    | PRIVATE
    | INTERNAL
    | PUBLIC_INTERNAL
    | PRIVATE_INTERNAL
    | PUBLIC_PRIVATE


all : List OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
all =
    [ ALL
    , PUBLIC
    , NONE
    , PRIVATE
    , INTERNAL
    , PUBLIC_INTERNAL
    , PRIVATE_INTERNAL
    , PUBLIC_PRIVATE
    ]


decoder :
    Json.Decode.Decoder OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "ALL" ->
                    Json.Decode.succeed ALL

                "PUBLIC" ->
                    Json.Decode.succeed PUBLIC

                "NONE" ->
                    Json.Decode.succeed NONE

                "PRIVATE" ->
                    Json.Decode.succeed PRIVATE

                "INTERNAL" ->
                    Json.Decode.succeed INTERNAL

                "PUBLIC_INTERNAL" ->
                    Json.Decode.succeed PUBLIC_INTERNAL

                "PRIVATE_INTERNAL" ->
                    Json.Decode.succeed PRIVATE_INTERNAL

                "PUBLIC_PRIVATE" ->
                    Json.Decode.succeed PUBLIC_PRIVATE

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode :
    OrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
    -> Json.Encode.Value
encode val =
    case val of
        ALL ->
            Json.Encode.string "ALL"

        PUBLIC ->
            Json.Encode.string "PUBLIC"

        NONE ->
            Json.Encode.string "NONE"

        PRIVATE ->
            Json.Encode.string "PRIVATE"

        INTERNAL ->
            Json.Encode.string "INTERNAL"

        PUBLIC_INTERNAL ->
            Json.Encode.string "PUBLIC_INTERNAL"

        PRIVATE_INTERNAL ->
            Json.Encode.string "PRIVATE_INTERNAL"

        PUBLIC_PRIVATE ->
            Json.Encode.string "PUBLIC_PRIVATE"


