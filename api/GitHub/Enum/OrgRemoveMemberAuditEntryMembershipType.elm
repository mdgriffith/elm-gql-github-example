module GitHub.Enum.OrgRemoveMemberAuditEntryMembershipType exposing (OrgRemoveMemberAuditEntryMembershipType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgRemoveMemberAuditEntryMembershipType
-}


import Json.Decode
import Json.Encode


type OrgRemoveMemberAuditEntryMembershipType
    = SUSPENDED
    | DIRECT_MEMBER
    | ADMIN
    | BILLING_MANAGER
    | UNAFFILIATED
    | OUTSIDE_COLLABORATOR


all : List OrgRemoveMemberAuditEntryMembershipType
all =
    [ SUSPENDED
    , DIRECT_MEMBER
    , ADMIN
    , BILLING_MANAGER
    , UNAFFILIATED
    , OUTSIDE_COLLABORATOR
    ]


decoder : Json.Decode.Decoder OrgRemoveMemberAuditEntryMembershipType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "SUSPENDED" ->
                        Json.Decode.succeed SUSPENDED

                    "DIRECT_MEMBER" ->
                        Json.Decode.succeed DIRECT_MEMBER

                    "ADMIN" ->
                        Json.Decode.succeed ADMIN

                    "BILLING_MANAGER" ->
                        Json.Decode.succeed BILLING_MANAGER

                    "UNAFFILIATED" ->
                        Json.Decode.succeed UNAFFILIATED

                    "OUTSIDE_COLLABORATOR" ->
                        Json.Decode.succeed OUTSIDE_COLLABORATOR

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrgRemoveMemberAuditEntryMembershipType -> Json.Encode.Value
encode val =
    case val of
        SUSPENDED ->
            Json.Encode.string "SUSPENDED"

        DIRECT_MEMBER ->
            Json.Encode.string "DIRECT_MEMBER"

        ADMIN ->
            Json.Encode.string "ADMIN"

        BILLING_MANAGER ->
            Json.Encode.string "BILLING_MANAGER"

        UNAFFILIATED ->
            Json.Encode.string "UNAFFILIATED"

        OUTSIDE_COLLABORATOR ->
            Json.Encode.string "OUTSIDE_COLLABORATOR"


