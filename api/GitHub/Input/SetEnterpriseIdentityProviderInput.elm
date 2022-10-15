module GitHub.Input.SetEnterpriseIdentityProviderInput exposing (SetEnterpriseIdentityProviderInput, clientMutationId, input, issuer, null)

{-| 
## Creating an input

@docs input, SetEnterpriseIdentityProviderInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, issuer
-}


import GitHub
import GitHub.Enum.SamlDigestAlgorithm
import GitHub.Enum.SamlSignatureAlgorithm
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SetEnterpriseIdentityProviderInput =
    GitHub.Input.SetEnterpriseIdentityProviderInput


input :
    { enterpriseId : GitHub.Id
    , ssoUrl : GitHub.Uri
    , idpCertificate : String
    , signatureMethod :
        GitHub.Enum.SamlSignatureAlgorithm.SamlSignatureAlgorithm
    , digestMethod : GitHub.Enum.SamlDigestAlgorithm.SamlDigestAlgorithm
    }
    -> SetEnterpriseIdentityProviderInput
input requiredArgs =
    GraphQL.Engine.addField
        "digestMethod"
        "SamlDigestAlgorithm!"
        (GitHub.Enum.SamlDigestAlgorithm.encode requiredArgs.digestMethod)
        (GraphQL.Engine.addField
            "signatureMethod"
            "SamlSignatureAlgorithm!"
            (GitHub.Enum.SamlSignatureAlgorithm.encode
                requiredArgs.signatureMethod
            )
            (GraphQL.Engine.addField
                "idpCertificate"
                "String!"
                (Json.Encode.string requiredArgs.idpCertificate)
                (GraphQL.Engine.addField
                    "ssoUrl"
                    "URI!"
                    (GitHub.uri.encode requiredArgs.ssoUrl)
                    (GraphQL.Engine.addField
                        "enterpriseId"
                        "ID!"
                        (GitHub.id.encode requiredArgs.enterpriseId)
                        (GraphQL.Engine.inputObject
                            "SetEnterpriseIdentityProviderInput"
                        )
                    )
                )
            )
        )


issuer :
    String
    -> SetEnterpriseIdentityProviderInput
    -> SetEnterpriseIdentityProviderInput
issuer newArg_ inputObj_ =
    GraphQL.Engine.addField
        "issuer"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String
    -> SetEnterpriseIdentityProviderInput
    -> SetEnterpriseIdentityProviderInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { issuer :
        SetEnterpriseIdentityProviderInput -> SetEnterpriseIdentityProviderInput
    , clientMutationId :
        SetEnterpriseIdentityProviderInput -> SetEnterpriseIdentityProviderInput
    }
null =
    { issuer =
        \inputObj ->
            GraphQL.Engine.addField "issuer" "String" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


