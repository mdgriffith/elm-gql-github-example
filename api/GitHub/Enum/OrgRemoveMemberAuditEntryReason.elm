module GitHub.Enum.OrgRemoveMemberAuditEntryReason exposing (OrgRemoveMemberAuditEntryReason(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgRemoveMemberAuditEntryReason
-}


import Json.Decode
import Json.Encode


type OrgRemoveMemberAuditEntryReason
    = TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE
    | SAML_EXTERNAL_IDENTITY_MISSING
    | SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY
    | USER_ACCOUNT_DELETED
    | TWO_FACTOR_ACCOUNT_RECOVERY


all : List OrgRemoveMemberAuditEntryReason
all =
    [ TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE
    , SAML_EXTERNAL_IDENTITY_MISSING
    , SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY
    , USER_ACCOUNT_DELETED
    , TWO_FACTOR_ACCOUNT_RECOVERY
    ]


decoder : Json.Decode.Decoder OrgRemoveMemberAuditEntryReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE" ->
                    Json.Decode.succeed TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE

                "SAML_EXTERNAL_IDENTITY_MISSING" ->
                    Json.Decode.succeed SAML_EXTERNAL_IDENTITY_MISSING

                "SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY" ->
                    Json.Decode.succeed
                        SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY

                "USER_ACCOUNT_DELETED" ->
                    Json.Decode.succeed USER_ACCOUNT_DELETED

                "TWO_FACTOR_ACCOUNT_RECOVERY" ->
                    Json.Decode.succeed TWO_FACTOR_ACCOUNT_RECOVERY

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrgRemoveMemberAuditEntryReason -> Json.Encode.Value
encode val =
    case val of
        TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE ->
            Json.Encode.string "TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE"

        SAML_EXTERNAL_IDENTITY_MISSING ->
            Json.Encode.string "SAML_EXTERNAL_IDENTITY_MISSING"

        SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY ->
            Json.Encode.string "SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY"

        USER_ACCOUNT_DELETED ->
            Json.Encode.string "USER_ACCOUNT_DELETED"

        TWO_FACTOR_ACCOUNT_RECOVERY ->
            Json.Encode.string "TWO_FACTOR_ACCOUNT_RECOVERY"


