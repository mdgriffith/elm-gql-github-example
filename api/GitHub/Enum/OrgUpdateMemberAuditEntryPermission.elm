module GitHub.Enum.OrgUpdateMemberAuditEntryPermission exposing (OrgUpdateMemberAuditEntryPermission(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgUpdateMemberAuditEntryPermission
-}


import Json.Decode
import Json.Encode


type OrgUpdateMemberAuditEntryPermission
    = READ
    | ADMIN


all : List OrgUpdateMemberAuditEntryPermission
all =
    [ READ, ADMIN ]


decoder : Json.Decode.Decoder OrgUpdateMemberAuditEntryPermission
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


encode : OrgUpdateMemberAuditEntryPermission -> Json.Encode.Value
encode val =
    case val of
        READ ->
            Json.Encode.string "READ"

        ADMIN ->
            Json.Encode.string "ADMIN"


