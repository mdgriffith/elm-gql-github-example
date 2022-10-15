module GitHub.Input.RegenerateEnterpriseIdentityProviderRecoveryCodesInput exposing (RegenerateEnterpriseIdentityProviderRecoveryCodesInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RegenerateEnterpriseIdentityProviderRecoveryCodesInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RegenerateEnterpriseIdentityProviderRecoveryCodesInput =
    GitHub.Input.RegenerateEnterpriseIdentityProviderRecoveryCodesInput


input :
    { enterpriseId : GitHub.Id }
    -> RegenerateEnterpriseIdentityProviderRecoveryCodesInput
input requiredArgs =
    GraphQL.Engine.addField
        "enterpriseId"
        "ID!"
        (GitHub.id.encode requiredArgs.enterpriseId)
        (GraphQL.Engine.inputObject
            "RegenerateEnterpriseIdentityProviderRecoveryCodesInput"
        )


clientMutationId :
    String
    -> RegenerateEnterpriseIdentityProviderRecoveryCodesInput
    -> RegenerateEnterpriseIdentityProviderRecoveryCodesInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RegenerateEnterpriseIdentityProviderRecoveryCodesInput
        -> RegenerateEnterpriseIdentityProviderRecoveryCodesInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


