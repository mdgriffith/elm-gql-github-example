module GitHub.Enum.OrgRemoveBillingManagerAuditEntryReason exposing (OrgRemoveBillingManagerAuditEntryReason(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OrgRemoveBillingManagerAuditEntryReason
-}


import Json.Decode
import Json.Encode


type OrgRemoveBillingManagerAuditEntryReason
    = TWO_FACTOR_REQUIREMENT_NON_COMPLIANCE
    | SAML_EXTERNAL_IDENTITY_MISSING
    | SAML_SSO_ENFORCEMENT_REQUIRES_EXTERNAL_IDENTITY


list : List OrgRemoveBillingManagerAuditEntryReason
list =
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


