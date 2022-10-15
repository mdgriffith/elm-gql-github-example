module GitHub.Enum.OrgRemoveOutsideCollaboratorAuditEntryReason exposing (OrgRemoveOutsideCollaboratorAuditEntryReason(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OrgRemoveOutsideCollaboratorAuditEntryReason
-}


import Json.Decode
import Json.Encode


type OrgRemoveOutsideCollaboratorAuditEntryReason
    = TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE
    | SAML_EXTERNAL_IDENTITY_MISSING


list : List OrgRemoveOutsideCollaboratorAuditEntryReason
list =
    [ TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE, SAML_EXTERNAL_IDENTITY_MISSING ]


decoder : Json.Decode.Decoder OrgRemoveOutsideCollaboratorAuditEntryReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE" ->
                        Json.Decode.succeed
                            TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE

                    "SAML_EXTERNAL_IDENTITY_MISSING" ->
                        Json.Decode.succeed SAML_EXTERNAL_IDENTITY_MISSING

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrgRemoveOutsideCollaboratorAuditEntryReason -> Json.Encode.Value
encode val =
    case val of
        TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE ->
            Json.Encode.string "TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE"

        SAML_EXTERNAL_IDENTITY_MISSING ->
            Json.Encode.string "SAML_EXTERNAL_IDENTITY_MISSING"


