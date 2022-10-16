module GitHub.Enum.OrgRemoveBillingManagerAuditEntryReason exposing (OrgRemoveBillingManagerAuditEntryReason(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgRemoveBillingManagerAuditEntryReason
-}


import Json.Decode
import Json.Encode


type OrgRemoveBillingManagerAuditEntryReason
    = TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE
    | SAML_EXTERNAL_IDENTITY_MISSING
    | SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY


all : List OrgRemoveBillingManagerAuditEntryReason
all =
    [ TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE
    , SAML_EXTERNAL_IDENTITY_MISSING
    , SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY
    ]


decoder : Json.Decode.Decoder OrgRemoveBillingManagerAuditEntryReason
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

                    "SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY" ->
                        Json.Decode.succeed
                            SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrgRemoveBillingManagerAuditEntryReason -> Json.Encode.Value
encode val =
    case val of
        TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE ->
            Json.Encode.string "TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE"

        SAML_EXTERNAL_IDENTITY_MISSING ->
            Json.Encode.string "SAML_EXTERNAL_IDENTITY_MISSING"

        SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY ->
            Json.Encode.string "SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY"


