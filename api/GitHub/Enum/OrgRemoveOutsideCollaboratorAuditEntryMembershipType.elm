module GitHub.Enum.OrgRemoveOutsideCollaboratorAuditEntryMembershipType exposing (OrgRemoveOutsideCollaboratorAuditEntryMembershipType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgRemoveOutsideCollaboratorAuditEntryMembershipType
-}


import Json.Decode
import Json.Encode


type OrgRemoveOutsideCollaboratorAuditEntryMembershipType
    = OUTSIDE_COLLABORATOR
    | UNAFFILIATED
    | BILLING_MANAGER


all : List OrgRemoveOutsideCollaboratorAuditEntryMembershipType
all =
    [ OUTSIDE_COLLABORATOR, UNAFFILIATED, BILLING_MANAGER ]


decoder :
    Json.Decode.Decoder OrgRemoveOutsideCollaboratorAuditEntryMembershipType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "OUTSIDE_COLLABORATOR" ->
                    Json.Decode.succeed OUTSIDE_COLLABORATOR

                "UNAFFILIATED" ->
                    Json.Decode.succeed UNAFFILIATED

                "BILLING_MANAGER" ->
                    Json.Decode.succeed BILLING_MANAGER

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode :
    OrgRemoveOutsideCollaboratorAuditEntryMembershipType -> Json.Encode.Value
encode val =
    case val of
        OUTSIDE_COLLABORATOR ->
            Json.Encode.string "OUTSIDE_COLLABORATOR"

        UNAFFILIATED ->
            Json.Encode.string "UNAFFILIATED"

        BILLING_MANAGER ->
            Json.Encode.string "BILLING_MANAGER"


