module GitHub.Input.RemoveEnterpriseIdentityProviderInput exposing (RemoveEnterpriseIdentityProviderInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveEnterpriseIdentityProviderInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveEnterpriseIdentityProviderInput =
    GitHub.Input.RemoveEnterpriseIdentityProviderInput


input : { enterpriseId : GitHub.Id } -> RemoveEnterpriseIdentityProviderInput
input requiredArgs =
    GraphQL.Engine.addField
        "enterpriseId"
        "ID!"
        (GitHub.id.encode requiredArgs.enterpriseId)
        (GraphQL.Engine.inputObject "RemoveEnterpriseIdentityProviderInput")


clientMutationId :
    String
    -> RemoveEnterpriseIdentityProviderInput
    -> RemoveEnterpriseIdentityProviderInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RemoveEnterpriseIdentityProviderInput
        -> RemoveEnterpriseIdentityProviderInput
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


