module GitHub.Input.RemoveEnterpriseOrganizationInput exposing (RemoveEnterpriseOrganizationInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveEnterpriseOrganizationInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveEnterpriseOrganizationInput =
    GitHub.Input.RemoveEnterpriseOrganizationInput


input :
    { enterpriseId : GitHub.Id, organizationId : GitHub.Id }
    -> RemoveEnterpriseOrganizationInput
input requiredArgs =
    GraphQL.Engine.addField
        "organizationId"
        "ID!"
        (GitHub.id.encode requiredArgs.organizationId)
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject "RemoveEnterpriseOrganizationInput")
        )


clientMutationId :
    String
    -> RemoveEnterpriseOrganizationInput
    -> RemoveEnterpriseOrganizationInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RemoveEnterpriseOrganizationInput -> RemoveEnterpriseOrganizationInput
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


