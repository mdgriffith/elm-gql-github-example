module GitHub.Enum.OrgUpdateDefaultRepositoryPermissionAuditEntryPermission exposing (OrgUpdateDefaultRepositoryPermissionAuditEntryPermission(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgUpdateDefaultRepositoryPermissionAuditEntryPermission
-}


import Json.Decode
import Json.Encode


type OrgUpdateDefaultRepositoryPermissionAuditEntryPermission
    = READ
    | WRITE
    | ADMIN
    | NONE


all : List OrgUpdateDefaultRepositoryPermissionAuditEntryPermission
all =
    [ READ, WRITE, ADMIN, NONE ]


decoder :
    Json.Decode.Decoder OrgUpdateDefaultRepositoryPermissionAuditEntryPermission
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "READ" ->
                    Json.Decode.succeed READ

                "WRITE" ->
                    Json.Decode.succeed WRITE

                "ADMIN" ->
                    Json.Decode.succeed ADMIN

                "NONE" ->
                    Json.Decode.succeed NONE

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode :
    OrgUpdateDefaultRepositoryPermissionAuditEntryPermission
    -> Json.Encode.Value
encode val =
    case val of
        READ ->
            Json.Encode.string "READ"

        WRITE ->
            Json.Encode.string "WRITE"

        ADMIN ->
            Json.Encode.string "ADMIN"

        NONE ->
            Json.Encode.string "NONE"


