module GitHub.Enum.OrgAddMemberAuditEntryPermission exposing (OrgAddMemberAuditEntryPermission(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgAddMemberAuditEntryPermission
-}


import Json.Decode
import Json.Encode


type OrgAddMemberAuditEntryPermission
    = READ
    | ADMIN


all : List OrgAddMemberAuditEntryPermission
all =
    [ READ, ADMIN ]


decoder : Json.Decode.Decoder OrgAddMemberAuditEntryPermission
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "READ" ->
                    Json.Decode.succeed READ

                "ADMIN" ->
                    Json.Decode.succeed ADMIN

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrgAddMemberAuditEntryPermission -> Json.Encode.Value
encode val =
    case val of
        READ ->
            Json.Encode.string "READ"

        ADMIN ->
            Json.Encode.string "ADMIN"


