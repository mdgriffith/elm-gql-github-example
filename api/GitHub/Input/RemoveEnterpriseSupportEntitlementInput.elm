module GitHub.Input.RemoveEnterpriseSupportEntitlementInput exposing (RemoveEnterpriseSupportEntitlementInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveEnterpriseSupportEntitlementInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveEnterpriseSupportEntitlementInput =
    GitHub.Input.RemoveEnterpriseSupportEntitlementInput


input :
    { enterpriseId : GitHub.Id, login : String }
    -> RemoveEnterpriseSupportEntitlementInput
input requiredArgs =
    GraphQL.Engine.addField
        "login"
        "String!"
        (Json.Encode.string requiredArgs.login)
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject
                "RemoveEnterpriseSupportEntitlementInput"
            )
        )


clientMutationId :
    String
    -> RemoveEnterpriseSupportEntitlementInput
    -> RemoveEnterpriseSupportEntitlementInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RemoveEnterpriseSupportEntitlementInput
        -> RemoveEnterpriseSupportEntitlementInput
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


