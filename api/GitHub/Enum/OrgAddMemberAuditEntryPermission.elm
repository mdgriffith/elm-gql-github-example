module GitHub.Enum.OrgAddMemberAuditEntryPermission exposing (OrgAddMemberAuditEntryPermission(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OrgAddMemberAuditEntryPermission
-}


import Json.Decode
import Json.Encode


type OrgAddMemberAuditEntryPermission
    = READ
    | ADMIN


list : List OrgAddMemberAuditEntryPermission
list =
    [ READ, ADMIN ]


decoder : Json.Decode.Decoder OrgAddMemberAuditEntryPermission
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


